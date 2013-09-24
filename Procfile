web: bundle exec unicorn -p $PORT -c ./config/unicorn.rb
worker: bundle exec sidekiq -c 7 -q default -q default -q critical,2
clock: bundle exec clockwork app/clock.rb