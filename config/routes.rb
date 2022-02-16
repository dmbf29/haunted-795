Rails.application.routes.draw do
  resources :haunted_houses, only: [:show] do
    resources :monsters, only: [:new, :create]
  end
  resources :monsters, only: [:destroy]
end
