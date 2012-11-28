class DiseaseCube < ActiveRecord::Base
  attr_accessible :city_id, :disease_id
  
  belongs_to :city
  belongs_to :disease
end
