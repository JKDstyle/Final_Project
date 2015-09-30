class CreateMartialArts < ActiveRecord::Migration
  def change
    create_table :martial_arts do |t|

      t.timestamps null: false
      t.string :name
      t.text :description

    end
  end
end
