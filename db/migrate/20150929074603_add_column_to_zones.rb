class AddColumnToZones < ActiveRecord::Migration
  def change
    add_column :zones, :name, :string
  end
end
