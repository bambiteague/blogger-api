Rails.application.routes.draw do
  resources :comments
  resources :authors
  resources :posts
end
