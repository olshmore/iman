Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#landing'

  get 'sellable_goods/all', to: 'sellable_goods#all'
  get '/account', to: 'pages#account'
  post '/buy/:sellable_good_id', to: 'pages#buy'
  post '/accept_bid', to: 'pages#accept_bid'
  resources :sellable_goods
  get '/admin', to: 'admin/dashboard#index'
  get '/admin/settings', to: 'admin/dashboard#settings'
  get '/admin/manual', to: 'admin/dashboard#manual'
  get '/admin/deposit', to: 'admin/dashboard#deposit'
  post '/admin/save_settings', to: 'admin/dashboard#save_settings'
end
