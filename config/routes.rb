Alift::Application.routes.draw do
  
  

  resources :users

  resources :posts
   
  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'
  
   
  get "pages/index"

  root :to => 'pages#index'
  match '/newride', to: 'posts#new'
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)


end
