class CreateItems < ActiveRecord::Migration[8.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :min_quatity
      t.text :observation

      t.timestamps
    end
  end
end
