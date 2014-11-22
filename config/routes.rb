 #me Rails.application.routes.draw do
  # me devise_for :users
  
  Dropbox::Application.routes.draw do
    
  #me devise_for :users
 devise_for :users do get '/users/sign_out' => 'devise/sessions#destroy' end
   root :to => "home#index"
end
  
 

