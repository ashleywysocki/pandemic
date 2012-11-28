class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :outbreak_number
      t.integer :infection_rate
      t.boolean :won_game?

      t.timestamps
    end
  end
end
