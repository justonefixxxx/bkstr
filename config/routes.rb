Rails.application.routes.draw do
  resources :books

  resources :authors

  resources :categories

  root to: 'visitors#index'
  devise_for :users,
  	:controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

end
