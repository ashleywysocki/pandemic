class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :color
      t.string :name

      t.timestamps
    end
  end
end
