class Astronaut < ActiveRecord::Base
  has_many :crewings
  has_many :astronauts, through: :crewings

  def spaceship
    crewings.where(captain: true).first.spaceship
  end
end
