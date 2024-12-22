class CreateInventories < ActiveRecord::Migration[8.0]
  def change
    create_table :inventories do |t|
      t.string :is_present
      t.integer :quantity
      t.string :observation
      t.date :controle_date
      t.integer :item_id
      t.integer :location_id
      t.integer :vehicule_id
      t.integer :user_id

      t.timestamps
    end
  end
end
