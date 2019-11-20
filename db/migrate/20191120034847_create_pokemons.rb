class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.string :number
      t.string :name
      t.references :pokemon_type, null: false, foreign_key: true
      t.text :image_url
      t.datetime :deleted_at

      t.timestamps
    end

    add_index :pokemons, :deleted_at
  end
end
