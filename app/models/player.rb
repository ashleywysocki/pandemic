class Player < ActiveRecord::Base
  attr_accessible :color, :name, :game_id
  belongs_to :role
  
  validates :color, :presence => true
end
