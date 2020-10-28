Rails.application.routes.draw do
  resources :comments, only: [:index, :show, :create, :update, :destroy]
  resources :entries, only: [:index, :show, :create, :update, :destroy]
  resources :patients, only: [:index, :show, :create, :update, :destroy]
  resources :providers, only: [:index, :show, :create, :update, :destroy]
  resources :organizations, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
