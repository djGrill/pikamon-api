class CreatePokemonTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemon_types do |t|
      t.string :name
      t.datetime :deleted_at

      t.timestamps
    end

    add_index :pokemon_types, :deleted_at
  end
end
