class CreateMartialArtZones < ActiveRecord::Migration
  def change
    create_table :martial_art_zones do |t|

      t.timestamps null: false
      t.integer :zone_id
      t.integer :martial_art_id
    end
  end
end
