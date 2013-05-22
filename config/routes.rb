Alift::Application.routes.draw do
  
  resources :posts
   
  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'
   
  get "pages/index"


  root :to => 'pages#index'
  match '/newride', to: 'posts#new'


end
