Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users

  resources :users do
    resources :purchases, only: [:new, :create, :show]
    resources :net_worths, only: [:new, :show, :create]
    resources :smokes, only: [:new, :create, :update, :index]
  end
end
