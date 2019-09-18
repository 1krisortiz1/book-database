Rails.application.routes.draw do

  resources :reviews
  resources :books
  resources :authors
  resources :readers


  root 'welcome#home'
  get 'about', to: 'welcome#about'

end
