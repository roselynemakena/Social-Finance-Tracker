Rails.application.routes.draw do


devise_for :users, controllers: {registrations: 'user/registrations'}
root 'welcome#index'
get 'my_portfolio', to: "users#my_portfolio"
get 'my_friends', to: "users#my_friends"
get 'logout', to: "devise/sessions#destroy"
get 'search_stocks', to: "stocks#search"

resources :user_stocks, except: [:edit, :update, :show]

# get 'logout', to: "devise/sessions#destroy"
end
