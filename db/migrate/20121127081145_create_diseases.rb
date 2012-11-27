class CreateDiseases < ActiveRecord::Migration
  def change
    create_table :diseases do |t|
      t.string :color
      t.boolean :is_cured
      t.boolean :is_eradicated
      t.integer :game_id
      t.string :name

      t.timestamps
    end
  end
end
