Rails.application.routes.draw do

  resources :photos do 
  	resources :comments
  end
  ActiveAdmin.routes(self)

  devise_for :users
  get 'users/:id' => 'users#profile', as: 'users_profile'

  root 'photos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
