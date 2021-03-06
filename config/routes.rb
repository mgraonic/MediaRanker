Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#index'

  resources :works do
    resources :votes, only: [:create, :index]
    resources :users, only: [:index]
  end

  resources :users, only: [:index, :show, :create]

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

end
