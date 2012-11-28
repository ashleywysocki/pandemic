class City < ActiveRecord::Base
  attr_accessible :color, :name, :player_deck_id, :infection_deck_id
  has_one :research_station
  belongs_to :player_deck
  belongs_to :infection_deck
  has_many :disease_cubes
  
  validates :color, :presence => true, :inclusion => { :in => %w(blue black red yellow),
      :message => "%{value} is not a valid color" }
  validates :name, :presence => true
  
end
