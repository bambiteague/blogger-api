Rails.application.routes.draw do
  resources :users
  resources :comments
  resources :authors
  resources :posts
end
