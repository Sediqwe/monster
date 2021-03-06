Rails.application.routes.draw do
  resources :user2s
  resources :lists
  resources :megas
  get 'mega', to: 'mega#index'
  get 'stat', to: 'stat#index'
  post 'down', to: 'megas#download'
  resources :messages
  resources :news
  resources :blogs
  resources :programs
  resources :translaters
  resources :platforms
  resources :users
  get "user", to: "user2s#index"
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
  get 'tomb', to: 'lists#tomb'
  post 'tomb', to: 'lists#tomb_feldolgozo'
  get 'lists_update', to: 'lists#lista_frissites'
root 'games#index'
post 'login/create'
post 'sessions/create'
get 'login/create', to: 'login#reg'
end

