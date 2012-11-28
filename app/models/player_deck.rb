class PlayerDeck < Deck
  attr_accessible :game_id
  
  has_many :cities
  belongs_to :game

end
