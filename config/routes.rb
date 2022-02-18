Rails.application.routes.draw do
  root to: 'pages#home'
  resources :haunted_houses, only: [:show] do
    resources :monsters, only: [:new, :create]
  end
  resources :monsters, only: [:destroy] do
    resources :curses, only: [:new, :create]
  end
end

# /monsters/:monster_id/curses
