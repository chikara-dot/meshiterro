Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root 'post_images#index'
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resources :favorites,only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end
  resources :users,only: [:show,:edit,:update]
end