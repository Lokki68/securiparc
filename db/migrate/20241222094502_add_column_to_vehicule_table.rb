class AddColumnToVehiculeTable < ActiveRecord::Migration[8.0]
  def change
    add_column :vehicules, :vehicule_type, :string
  end
end
