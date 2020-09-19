Rails.application.routes.draw do
  get '/entities/email_confirmation', to: 'entities#email_confirmation'
  post 'login', to: 'entities#login'
  resources :events, only: [:index, :show, :create, :update]
  resources :entities, only: [:show, :create]
  resources :categories, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
