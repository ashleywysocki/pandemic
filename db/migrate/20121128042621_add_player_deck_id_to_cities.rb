class AddPlayerDeckIdToCities < ActiveRecord::Migration
  def change
    add_column :cities, :player_deck_id, :integer
  end
end
