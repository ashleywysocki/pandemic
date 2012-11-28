class InfectionDeck < Deck
  attr_accessible :game_id
  
  has_many :cities
end
