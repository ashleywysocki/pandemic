class FixWonGameColumn < ActiveRecord::Migration
  def change
    change_table :games do |t|
      t.rename :won_game?, :won_game
    end
  end
end
