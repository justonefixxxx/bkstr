Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :books

  resources :authors

  resources :categories

  resource :order, only: [:show] do
  	put 'add/:book_id', to: 'orders#add', as: :add_to
  	put 'remove/:book_id', to: 'orders#remove', as: :remove_from
	end

  root to: 'books#index'

  devise_for :users,
  	:controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
end
