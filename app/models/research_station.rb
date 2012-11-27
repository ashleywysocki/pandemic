class ResearchStation < ActiveRecord::Base
  attr_accessible :city_id, :game_id
  belongs_to :city
  belongs_to :game
end
