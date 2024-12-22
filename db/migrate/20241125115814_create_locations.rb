class CreateLocations < ActiveRecord::Migration[8.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.integer :vehicule_id
      
      t.timestamps
    end
  end
end
