class AddWebsiteToGims < ActiveRecord::Migration
  def change
    add_column :gims, :web_site, :string
  end
end
