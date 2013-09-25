class Starship < ActiveRecord::Base
  # attr_accessible :name, :count
  has_many :crew_members

  def create_crew
    10.times do |i|
      self.crew_members.create(name: "Crew #{i}", count: 0)
    end
  end
end
