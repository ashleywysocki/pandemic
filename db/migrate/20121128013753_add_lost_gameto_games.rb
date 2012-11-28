class AddLostGametoGames < ActiveRecord::Migration
  def change
    add_column :games, :lost_game?, :boolean
  end
end
