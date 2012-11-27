class AddGameIdToRoles < ActiveRecord::Migration
  def change
    add_column :roles, :game_id, :integer
  end
end
