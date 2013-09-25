class TestWorker
  include Sidekiq::Worker

  def perform
    Starship.find_each do |ship|
      StarshipWorker.perform_async(ship.id)
      ship.crew_members.each do |crew|
        CrewMemberWorker.perform_async(crew.id)
      end
    end
  end

end