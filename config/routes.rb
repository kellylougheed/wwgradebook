Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#index'
  resources :courses do
    resources :students, only: [:create]
    resources :assignments, only: [:create, :new]
  end
  resources :students, only: [:show, :edit, :update, :destroy] do
    resources :comments, only: [:create, :edit, :update, :destroy]
    # resources :entries, only: [:create, :edit, :update, :destroy]
  end
  resources :assignments, only: [:show, :edit, :update, :destroy]
end
