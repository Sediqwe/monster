Rails.application.routes.draw do
  
  resources :projects
  get 'settings/start'
  root to: 'home#start'
  get 'signin', to:  'sign#signin'
  get 'signup', to:  'sign#signup'
end
