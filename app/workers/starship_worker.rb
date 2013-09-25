class StarshipWorker
  include Sidekiq::Worker

  def perform(id)
    ship = Starship.find(id)
    ship.count = 1 + (ship.count || 0)
    ship.save
  end

end