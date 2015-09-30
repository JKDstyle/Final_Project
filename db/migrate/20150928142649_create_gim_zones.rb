class CreateGimZones < ActiveRecord::Migration
  def change
    create_table :gim_zones do |t|

      t.timestamps null: false
      t.integer :gim_id
      t.integer :zone_id
    end
  end
end
