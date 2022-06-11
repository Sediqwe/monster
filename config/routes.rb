Rails.application.routes.draw do
  get 'stat', to: 'stat#index'
  resources :messages
  resources :forumals
  resources :forums
  resources :news
  resources :blogs
  resources :programs
  resources :translaters
  resources :platforms
  resources :users
  post 'download', to: "games#download"
  post 'editorka', to: "uploads#editorka"
  post 'upload_bad', to: "uploads#bad"
  post 'games_magyhu', to: "games#magyhu"
  resources :uploads
  resources :games
  get 'sessions/new'
  get 'sessions/create'
  get 'login/signin', to: 'sessions#new'
  get 'login/signout'
  get 'login/reg'
root 'games#index'
post 'login/create'
post 'sessions/create'
get 'login/create', to: 'login#reg'
end

