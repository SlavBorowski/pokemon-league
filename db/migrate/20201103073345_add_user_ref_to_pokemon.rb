class AddUserRefToPokemon < ActiveRecord::Migration[6.0]
  def change
    add_reference :pokemons, :user, null: false, foreign_key: true
  end
end
