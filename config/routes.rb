Rails.application.routes.draw do

  resources :reviews
  resources :books
  resources :authors
  resources :readers
root 'welcome#home'
  
get 'welcome/home', to: 'welcome#home'
get 'welcome/about', to: 'welcome#about'

end
