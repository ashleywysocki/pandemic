class RemoveNumberPlayersFromPlayerDeck < ActiveRecord::Migration
  def up
    remove_column :player_decks, :number_players
  end

  def down
    add_column :player_decks, :number_players, :integer
  end
end
