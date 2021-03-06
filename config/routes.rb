Rails.application.routes.draw do
  resources :comments, only: [:index, :show, :create, :update, :destroy]
  resources :entries, only: [:index, :show, :create, :update, :destroy]
  resources :patients, only: [:index, :show, :create, :update, :destroy]
  resources :providers, only: [:index, :show, :create, :update, :destroy]
  resources :organizations, only: [:index, :show]

  post '/patient-login', to: 'patients#login'
  get '/patient-persist', to: 'patients#persist'
  post '/provider-login', to: 'providers#login'
  get '/provider-persist', to: 'providers#persist'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
