class TestWorker
  include Sidekiq::Worker

  def perform
    Starship.find_each do |ship|
      StarshipWorker.perform_async(ship.id)
    end
  end

end