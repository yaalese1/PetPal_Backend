Rails.application.routes.draw do


  resources :bookings, only: [:index, :show]
  resources :pets
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  post'/signup', to: 'users#signup'
  # get `/#{User.first_name}`, to: 'users#show'
  get '/user', to: 'users#show'
  post '/login', to: 'sessions#login'
  delete '/logout', to: 'sessions#logout'

end
