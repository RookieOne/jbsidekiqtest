class CrewMemberWorker
  include Sidekiq::Worker

  def perform(id)
    crew = CrewMember.find(id)
    crew.count = 1 + (crew.count || 0)
    crew.save
  end

end