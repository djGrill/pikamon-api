class CreatePikamonWilds < ActiveRecord::Migration[6.0]
  def change
    create_table :pikamon_wilds do |t|
      t.references :pikamon, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :hp
      t.integer :cp
      t.datetime :deleted_at

      t.timestamps
    end

    add_index :pikamon_wilds, :deleted_at
  end
end
