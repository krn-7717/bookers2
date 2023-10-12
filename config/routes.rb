Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  get 'home/about' => 'homes#about'
  resources :users, only: [:new, :show, :index, :edit, :update]
  resources :books, only: [:new, :show, :index, :edit, :create, :destroy, :update]
  # get 'users/new'
  # get 'users/show'
  # get 'users/index'
  # get 'users/edit'
  # get 'books/new'
  # get 'books/show'
  # get 'books/index'
  # get 'books/edit'
  # get 'homes/top'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
