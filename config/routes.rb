Rails.application.routes.draw do


devise_for :users, controllers: {registrations: 'user/registrations'}
root 'welcome#index'
get 'my_portfolio', to: "users#my_portfolio"
get 'my_friends', to: "users#my_friends"
get 'logout', to: "devise/sessions#destroy"
get 'search_stocks', to: "stocks#search"
get 'search_friends', to: "users#search"
post 'add_friend', to: "users#add_friend"

resources :user_stocks, except: [:edit, :update, :show]
resources :users, only: [:show]
resources :friendships

# get 'logout', to: "devise/sessions#destroy"
end
