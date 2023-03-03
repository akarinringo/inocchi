Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :snows
  root 'snows#index'
<<<<<<< HEAD
  resources :users, :only => [:index, :show]
  resources :messages, :only => [:create]
  resources :rooms, :only => [:create, :show]
 

=======
  
>>>>>>> origin/master
end

