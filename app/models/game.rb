class Game < ActiveRecord::Base
  attr_accessible :infection_rate, :outbreak_number, :won_game, :lost_game, :number_players
  before_create :set_win_loss
  after_create :create_deck
  
  has_many :cities
  has_many :diseases
  has_many :disease_cubes
  has_one :infection_deck
  has_many :players
  has_one :player_deck
  has_many :research_stations
  has_many :roles
  
  def set_win_loss
    self.won_game = false if self.won_game == nil
    self.lost_game = false if self.lost_game == nil
    self.infection_rate = 0  if self.infection_rate == nil
    self.outbreak_number = 0  if self.outbreak_number == nil
  end
  
  def create_deck
    PlayerDeck.create(:game_id => self.id)
  end
end
