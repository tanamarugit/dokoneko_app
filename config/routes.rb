# == Route Map
#

Rails.application.routes.draw do
  root 'homes#index'

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :users, only: [:new, :create, :show, :edit, :update]
  resources :posts
end
