Rails.application.routes.draw do
  get 'user_settings', to: "user_settings#index"
  
  resources :uploads
  resources :games
  get 'sessions/new'
  get 'sessions/create'
  get 'login/signin', to: 'sessions#new'
  get 'login/signout'
  get 'login/reg'
root 'home#start'
post 'login/create'
post 'sessions/create'
get 'login/create', to: 'login#reg'
end
