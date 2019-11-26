class CreatePikamonTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :pikamon_types do |t|
      t.string :name
      t.datetime :deleted_at

      t.timestamps
    end

    add_index :pikamon_types, :deleted_at
  end
end
