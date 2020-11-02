class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.string :nickname
      t.string :base_pokemon
      t.string :poke_type
      t.integer :level
      t.integer :attack
      t.integer :hp

      t.timestamps
    end
  end
end
