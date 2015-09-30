class AddLonAndLatToGims < ActiveRecord::Migration
  def change
  	add_column :gims, :longitude, :integer
  	add_column :gims, :lattitude, :integer
  end
end
