Rails.application.routes.draw do
  namespace :admin do
    resources :games
    resources :stats
    resources :teams
    resources :tournaments
    resources :users

    root to: "stats#index"
  end

  root to: 'teams#index'

  resources 'tournaments', only: %i(index show) do
    resources 'games', only: %i(show)
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
