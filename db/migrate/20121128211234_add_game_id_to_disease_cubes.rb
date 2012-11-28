class AddGameIdToDiseaseCubes < ActiveRecord::Migration
  def change
    add_column :disease_cubes, :game_id, :integer
  end
end
