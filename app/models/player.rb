class Player < ActiveRecord::Base
  attr_accessible :color, :name
  
  validates :color, :presence => true
end
