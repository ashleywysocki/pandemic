class City < ActiveRecord::Base
  attr_accessible :color, :game_id, :name
  has_one :research_station
  belongs_to :game
  
  validates :color, :presence => true
  validates :name, :presence => true
end
