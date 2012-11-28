class FixLostGameColumn < ActiveRecord::Migration
  def change
    change_table :games do |t|
      t.rename :lost_game?, :lost_game
    end
  end
end
