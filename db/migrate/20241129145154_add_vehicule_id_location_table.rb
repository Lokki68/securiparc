class AddVehiculeIdLocationTable < ActiveRecord::Migration[8.0]
  def change
    create_table :inventory do |t|
      t.string :is_present
      t.integer :quatity
      t.string :observation
      t.integer :item_id
      t.integer :location_id
      t.integer :vehicule_id

      t.timestamps
    end  end
end
