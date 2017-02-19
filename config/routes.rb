Rails.application.routes.draw do
  namespace :admin do
    resources :games
resources :stats
resources :teams
resources :team_tournaments
resources :tournaments
resources :users

    root to: "games#index"
  end

  root to: 'top#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
