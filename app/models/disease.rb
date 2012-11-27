class Disease < ActiveRecord::Base
  attr_accessible :color, :game_id, :is_cured, :is_eradicated
end
