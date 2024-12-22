class CreateVehicules < ActiveRecord::Migration[8.0]
  def change
    create_table :vehicules do |t|
      t.string :name
      t.string :registration_number
      t.date :maintenance_date
      t.date :technical_inspection
      t.string :status

      t.timestamps
    end
  end
end
