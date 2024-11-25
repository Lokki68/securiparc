class CreateVehicules < ActiveRecord::Migration[8.0]
  def change
    create_table :vehicules do |t|
      t.string :name
      t.date :revision
      t.string :status

      t.timestamps
    end
  end
end
