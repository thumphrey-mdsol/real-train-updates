Rails.application.routes.draw do
  get '/login', to: 'session#new'
  get 'sessions/create', to: 'session#create'
  get '/logout', to: 'session#destroy'
  resources :stations
  resources :uls
  resources :trains
  resources :subways
  resources :updates
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
