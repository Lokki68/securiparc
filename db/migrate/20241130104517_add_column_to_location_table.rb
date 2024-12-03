class AddColumnToLocationTable < ActiveRecord::Migration[8.0]
  def change
    add_column :locations, :localisation, :string
  end
end
