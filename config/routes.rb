Rails.application.routes.draw do
  root "articles#index"
  devise_for :users
  resources :comments
  resources :articles
  resources :users, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
