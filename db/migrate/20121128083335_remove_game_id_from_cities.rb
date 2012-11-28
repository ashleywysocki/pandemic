class RemoveGameIdFromCities < ActiveRecord::Migration
  def up
    remove_column :cities, :game_id
  end

  def down
    add_column :cities, :game_id, :integer
  end
end
