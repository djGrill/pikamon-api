class CreatePikamons < ActiveRecord::Migration[6.0]
  def change
    create_table :pikamons do |t|
      t.string :number
      t.string :name
      t.references :pikamon_type, null: false, foreign_key: true
      t.text :image_url
      t.datetime :deleted_at

      t.timestamps
    end

    add_index :pikamons, :deleted_at
  end
end
