Rails.application.routes.draw do
  devise_for :users
  resources :pokemons, only: [:index, :new, :destroy, :show]

end
