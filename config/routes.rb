Rails.application.routes.draw do
  get 'login/signin'
  get 'login/signout'
  get 'login/reg'
root 'home#start'
end
