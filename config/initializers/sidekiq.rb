ENV["OPENREDIS_URL"] ||= "redis://localhost/"

Sidekiq.configure_server do |config|
  config.redis = {:url => ENV["OPENREDIS_URL"], size: 20}
  config.poll_interval = 5

  database_url = ENV['DATABASE_URL']
  if(database_url)
    ENV['DATABASE_URL'] = "#{database_url}?pool=50"
    ActiveRecord::Base.establish_connection
  end
end

Sidekiq.configure_client do |config|
  config.redis = {:url => ENV["OPENREDIS_URL"], :size => 30}
end
