Rails.application.routes.draw do
  resources :news
  resources :blogs
  resources :programs
  resources :translaters
  resources :platforms
  resources :users
  post 'download', to: "games#download"
  post 'upload_bad', to: "uploads#bad"
  resources :uploads
  resources :games
  get 'sessions/new'
  get 'sessions/create'
  get 'login/signin', to: 'sessions#new'
  get 'login/signout'
  get 'login/reg'
root 'news#index'
post 'login/create'
post 'sessions/create'
get 'login/create', to: 'login#reg'
end
