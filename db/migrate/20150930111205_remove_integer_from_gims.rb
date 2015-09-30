class RemoveIntegerFromGims < ActiveRecord::Migration
  def change
  	remove_column :gims, :longitude
  	remove_column :gims, :lattitude
  end
end
