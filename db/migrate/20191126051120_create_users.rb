class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :uuid
      t.string :username
      t.datetime :deleted_at

      t.timestamps
    end

    add_index :users, :deleted_at
  end
end
