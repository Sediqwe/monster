Rails.application.routes.draw do
  #resources :uploads
  get 'feltoltes', to:  'uploads#new'
  get 'home/start'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/logout'
  post 'sign/create'
  get 'sign/new'
  get 'sign/create'
  get 'file_upload/index'
  #resources :projects
  get 'settings/start'
  root to: 'home#start'
  get 'signin', to:  'sign#signin'
  get 'signup', to:  'sign#signup'
  post 'sessions/create'
  resources :projects do
    resources :uploads
  end
  
end
