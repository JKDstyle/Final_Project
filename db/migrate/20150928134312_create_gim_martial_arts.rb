class CreateGimMartialArts < ActiveRecord::Migration
  def change
    create_table :gim_martial_arts do |t|

      t.timestamps null: false
      t.integer :gim_id
      t.integer :martial_art_id
    end
  end
end
