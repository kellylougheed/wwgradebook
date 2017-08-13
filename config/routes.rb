Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#index'
  resources :courses do
    resources :students, only: [:create]
  end
  resources :students, only: [:show]
end
