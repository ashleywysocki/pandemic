class CreateDiseaseCubes < ActiveRecord::Migration
  def change
    create_table :disease_cubes do |t|
      t.integer :disease_id
      t.integer :city_id

      t.timestamps
    end
  end
end
