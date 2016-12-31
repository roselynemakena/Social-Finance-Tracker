Rails.application.routes.draw do


devise_for :users
root 'welcome#index'
get 'my_portfolio', to: "users#my_portfolio"
get 'search_stocks', to: "stocks#search"

resources :user_stocks, except: [:edit, :update, :show]

# get 'logout', to: "devise/sessions#destroy"
end
