class City < ActiveRecord::Base
  attr_accessible :color, :game_id, :name
  has_one :research_station
  belongs_to :game
  belongs_to :player_deck
  
  validates :color, :presence => true, :inclusion => { :in => %w(blue black red yellow),
      :message => "%{value} is not a valid color" }
  validates :name, :presence => true
  
end
