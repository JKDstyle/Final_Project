class CreateGims < ActiveRecord::Migration
  def change
    create_table :gims do |t|

      t.timestamps null: false
      t.string :name
      t.text :description
      t.text :address
    end
  end
end
