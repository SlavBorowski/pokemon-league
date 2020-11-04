Rails.application.routes.draw do
  devise_for :users
  resources :trainers, only: [:index, :new, :destroy, :show, :create]
  root "trainers#index"
end
