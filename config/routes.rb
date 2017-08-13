Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#index'
  resources :courses do
    resources :students, only: [:create]
    resources :assignments, only: [:create, :new]
  end
  resources :students, only: [:show, :edit, :update, :destroy]
  resources :assignments, only: [:show, :edit, :update, :destroy]
end
