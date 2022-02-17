Rails.application.routes.draw do
  resources :haunted_houses, only: [:show] do
    resources :monsters, only: [:new, :create]
  end
  resources :monsters, only: [:destroy] do
    resources :curses, only: [:new, :create]
  end
end

# /monsters/:monster_id/curses
