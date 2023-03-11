Rails.application.routes.draw do
  #get 'users/edit'
  #get 'users/index'
  #get 'users/show'
  #get 'books/new'
  #get 'books/index'
  #get 'books/show'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "homes#top"
  devise_for :users

  resources :books, only: [:create, :index, :show, :edit, :update, :destroy] do
    resources :book_comments, only:[:create, :destroy]
  end

  resources :users, only: [:index, :show, :edit, :update]

  #get 'homes/about', as: 'about'
  #get '/home/about', as: 'about' コントローラーにいかない
  get "home/about" => "homes#about", as: "about"

end
