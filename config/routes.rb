Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  get "pokemons/new", to: "pokemons#new"
  post "pokemons", to: "pokemons#create"
  patch "pokemon/capture", to: "pokemons#capture", as: "capture"
  patch "pokemon/damage", to: "pokemons#damage", as: "damage"
  
end

