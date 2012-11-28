class Game < ActiveRecord::Base
  attr_accessible :infection_rate, :outbreak_number, :won_game, :lost_game, :number_players
  before_create :set_win_loss
  after_create :create_deck
  after_create :create_diseases
  after_create :initial_infection
  
  has_many :diseases
  has_one :infection_deck
  has_many :players
  has_one :player_deck
  has_many :research_stations
  has_many :roles
  has_many :disease_cubes
  
  def set_win_loss
    self.won_game = false if self.won_game == nil
    self.lost_game = false if self.lost_game == nil
    self.infection_rate = 0  if self.infection_rate == nil
    self.outbreak_number = 0  if self.outbreak_number == nil
  end
  
  def create_deck
    PlayerDeck.create(:game_id => self.id)
    InfectionDeck.create(:game_id => self.id)
  end
  
  def create_diseases
   colors = ["red", "yellow","blue","black"]
   colors.each do |color|
     Disease.create(:color => color, :game_id => self.id)
    end
  end
  
  def initial_infection
   infection_deck = self.infection_deck.cities.shuffle
   infection_deck[0..2].each do |city|
     3.times {DiseaseCube.create(:city_id => city.id, :disease_id => self.diseases.find_by_color(city.color).id, :game_id => self.id)}
   end
   infection_deck[3..5].each do |city|
     2.times {DiseaseCube.create(:city_id => city.id, :disease_id => self.diseases.find_by_color(city.color).id, :game_id => self.id)}
   end
   infection_deck[0..2].each do |city|
     DiseaseCube.create(:city_id => city.id, :disease_id => self.diseases.find_by_color(city.color).id, :game_id => self.id)
   end
  end
end
