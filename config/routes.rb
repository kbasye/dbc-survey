Survey::Application.routes.draw do

  root :to => 'application#index'

  match '/login' => 'sessions#create', :as => 'login'
  match '/logout' => 'sessions#destroy', :as => 'logout'
  match '/signup' => 'users#new', :as => 'signup'

  resources :sessions, :only => [:create, :destroy]

  resources :users
  
  resources :creations do
  	resources :questions
	end


end
