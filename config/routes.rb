Rails.application.routes.draw do
  devise_for :users
  get 'home/about'
  root 'home#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :books, only: [:index, :show, :edit, :create, :update, :destroy] do
  	resources :book_comments, only: [:create, :destroy]
  	resource :favorites, only: [:create, :destroy]
  end
end
