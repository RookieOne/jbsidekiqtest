require "./config/boot"
require "./config/environment"

module Clockwork
  handler do |job|
    "Running #{job}"
  end

  every(30.seconds, 'test') do
    TestWorker.perform_async
  end

end