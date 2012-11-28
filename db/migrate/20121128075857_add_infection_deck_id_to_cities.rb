class AddInfectionDeckIdToCities < ActiveRecord::Migration
  def change
    add_column :cities, :infection_deck_id, :integer
  end
end
