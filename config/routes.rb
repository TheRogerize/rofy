Rails.application.routes.draw do
  get  '/login',        	    to: 'pages#login'
  get  '/signup',        	    to: 'pages#signup'
  get  '/store',        	    to: 'pages#store'
  
  get '/shared/_header'
  root to: 'static#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
