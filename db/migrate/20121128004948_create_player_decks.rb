class CreatePlayerDecks < ActiveRecord::Migration
  def change
    create_table :player_decks do |t|
      t.integer :number_players
      t.integer :game_id
      
      t.timestamps
    end
  end
end
