class AddImageToMartialArts < ActiveRecord::Migration
  def change
    add_column :martial_arts, :image, :string
  end
end
