class AddNumberPlayerstoGame < ActiveRecord::Migration
  def change
     add_column :games, :number_players, :integer
   end
end
