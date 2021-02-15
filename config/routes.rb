Rails.application.routes.draw do

  root to: "users#top"
  resources :users
  resources :comments
  resources :tweets
  resource :favorite
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
