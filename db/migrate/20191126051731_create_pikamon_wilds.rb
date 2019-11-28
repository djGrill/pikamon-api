class CreatePikamonWilds < ActiveRecord::Migration[6.0]
  def change
    create_table :pikamon_wilds do |t|
      t.references :pikamon, null: false, foreign_key: true
      t.references :user
      t.integer :hp
      t.integer :cp
      t.st_point :lonlat, geographic: true
      t.datetime :deleted_at

      t.timestamps
    end

    add_index :pikamon_wilds, :deleted_at
    add_index :pikamon_wilds, :lonlat, :using => :gist
  end
end
