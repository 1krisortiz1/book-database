Rails.application.routes.draw do

  resources :reviews
  resources :books
  resources :authors
  resources :readers


  root 'welcome#home'
  get 'about', to: 'welcome#about'
  get '/login', to: 'welcome#new'
  post '/login', to: 'welcome#create'
  get '/signup', to: 'readers#new'
  post '/signup', to: 'readers#create'
  delete '/logout', to: 'welcome#destroy'

end
