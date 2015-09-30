class AddLonAndLatToGimnasios < ActiveRecord::Migration
  def change
  	add_column :gims, :longitude, :string
  	add_column :gims, :lattitude, :string
  end
end
