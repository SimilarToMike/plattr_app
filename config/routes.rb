Rails.application.routes.draw do
  resources :shop, only:[:index, :show]
  resources :records
  devise_for :users
  resources :friends
  #get 'home/index'
  get 'home/about'
  root 'shop#index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
