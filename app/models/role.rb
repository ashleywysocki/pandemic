class Role < ActiveRecord::Base
  attr_accessible :description, :name, :game_id
  has_many :players
  
  validates :description, :presence => true
  validates :name, :presence => true
end
