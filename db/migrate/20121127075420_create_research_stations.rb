class CreateResearchStations < ActiveRecord::Migration
  def change
    create_table :research_stations do |t|
      t.integer :city_id
      t.integer :game_id

      t.timestamps
    end
  end
end
