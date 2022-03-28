Rails.application.routes.draw do
  resources :games
  get 'sessions/new'
  get 'sessions/create'
  get 'login/signin'
  get 'login/signout'
  get 'login/reg'
root 'home#start'
post 'login/create'
post 'sessions/create'
get 'login/create', to: 'login#reg'
end
