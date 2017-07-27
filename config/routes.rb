Rails.application.routes.draw do
  get 'bill/new'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'home#index'	
  devise_for :users, :controllers => {sessions: 'users/sessions', registrations: 'users/registrations',confirmations: 'users/confirmations' }
  resources :stocks do
  	resources :jobcards do
  		resources :bills
  	end
  end
  
end
