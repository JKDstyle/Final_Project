class CreateZones < ActiveRecord::Migration
  def change
    create_table :zones do |t|

      t.timestamps null: false
      t.text :address
    end
  end
end
