class AddVehiculeIdLocationTable < ActiveRecord::Migration[8.0]
  def change
    add_column :locations, :vehicule_id, :integer
  end
end
