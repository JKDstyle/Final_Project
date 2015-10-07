class AddUrlToGims < ActiveRecord::Migration
  def change
    add_column :gims, :url, :string
  end
end
