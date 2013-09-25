class StarshipWorker
  include Sidekiq::Worker

  def perform(id)
    ship = Starship.find(id)
    ship.count = 1 + (ship.count || 0)
    ship.crew_members.each do |crew|
      crew.name = "foo"
    end
    ship.save
  end

end