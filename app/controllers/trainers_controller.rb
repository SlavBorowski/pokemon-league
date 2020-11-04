class TrainersController < ApplicationController
  before_action :find_id, only: [:show]

  def index
    @trainers = User.all
  end

  def show
  end

  def new
    @pokemon = current_user.pokemons.new
  end

  def create
    @pokemon = current_user.pokemons.new(pokemon_params)
    if @pokemon.save
      redirect_to trainers_path
    else
      render :new
    end
  end

  def destroy
    current_user.pokemons.destroy(params[:id])
    redirect_to trainers_path
  end
end

private

def find_id
  @trainer = User.find(params[:id])
end

def pokemon_params
  params.require(:pokemon).permit(:nickname, :base_pokemon, :poke_type, :level, :attack, :hp)
end
