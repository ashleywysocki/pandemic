class Deck < ActiveRecord::Base
  # attr_accessible :game_id
  after_create :create_deck
  
  def create_deck
    cities = {"Atlanta" => "blue", "Los Angeles" => "yellow", "San Francisco" => "blue", "New York" => "blue", "Washington" => "blue", "Toronto" => "blue", "Chicago" => "blue", "Miami" => "yellow", "Mexico City" => "yellow", "Bogota" => "yellow", "San Paulo" => "yellow", "Lima" => "yellow", "Santiago" => "yellow", "Buenos Aires" => "yellow", "London" => "blue", "Paris" => "blue", "Madrid" => "blue", "Essen" => "blue", "Milan" => "blue", "St. Petersburg" => "blue", "Lagos" => "yellow", "Khartoum" => "yellow", "Kinshasa" => "yellow", "Johannesburg" => "yellow", "Cairo" => "black", "Algiers" => "black", "Istanbul" => "black", "Baghdad" => "black", "Moscow" => "black", "Tehran" => "black", "Karachi" => "black", "Mumbai" => "black", "Delhi" => "black", "Chennai" => "black", "Riyadh" => "black", "Kolkata" => "black", "Bangkok" => "red", "Jakarta" => "red", "Sydney" => "red", "Hong Kong" => "red", "Shanghai" => "red", "Ho Chi Minh City" => "red", "Manila" => "red", "Tapei" => "red", "Osaka" => "red", "Tokyo" => "red", "Seoul" => "red", "Beijing" => "red"}
    cities.each_pair do |name, color|
      self.cities << City.create(:name => name, :color => color)
    end
  end
end
