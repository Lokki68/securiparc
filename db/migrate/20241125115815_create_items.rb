class CreateItems < ActiveRecord::Migration[8.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :min_quantity
      t.integer :location_id
      t.integer :vehicule_id

      t.timestamps
    end
  end
end
