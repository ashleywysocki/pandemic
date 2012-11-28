class CreateInfectionDecks < ActiveRecord::Migration
  def change
    create_table :infection_decks do |t|
      t.integer :game_id
      
      t.timestamps
    end
  end
end
