Werewolf::Application.routes.draw do
   
  resources :villages do
   resources :games do
    member do 
     patch 'beast'
  end
   end
  end
 resources :users do
   member do
     patch 'more'
   end
 end
 resources :sessions, only: [:new, :create, :destroy]
  root to: "static_pages#home" 
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
 match 'toggle', to: 'users#toggle',            via: 'patch' 
  match '/signup',  to: 'users#new',            via: 'get'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  
end
