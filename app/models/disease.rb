class Disease < ActiveRecord::Base
  attr_accessible :color, :game_id, :name, :is_cured, :is_eradicated
  
  after_create :set_disease_status
  has_many :disease_cubes
  belongs_to :game
  
  validates :color, :presence => true
  
  def set_disease_status
    self.is_cured = false if self.is_cured == nil
    self.is_eradicated = false if self.is_eradicated == nil
    self.save
  end
end
