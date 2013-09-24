class TestWorker
  include Sidekiq::Worker

  def perform
    Starship.find_each do |ship|
      p ship.id
      # ship.count += 1
      # ship.save
    end
  end

end