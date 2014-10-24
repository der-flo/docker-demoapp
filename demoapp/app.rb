require 'sinatra'
require 'sidekiq'
require 'sidekiq/web'
require 'haml'

class AnalyticsWorker
  include Sidekiq::Worker
  def perform(user_agent)
    # Do hard work
    n = user_agent.hash % 100_000
    n += rand(50_000)
    (1..n).inject(:*) || 1

    sleep 5
  end
end

configure do
  set :server, :puma
end

get '/' do
  @hostname = `hostname -f`.strip
  AnalyticsWorker.perform_async(request.user_agent)

  @stats = Sidekiq::Stats.new
  haml :index
end
