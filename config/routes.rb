Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'snows/niigata' => 'snows#niigata'
  get 'snows/nagano' => 'snows#nagano'
  get 'snows/gunnma' => 'snows#gunnma'

  resources :snows
  root 'snows#index'

  resources :users, :only => [:index, :show]
  resources :messages, :only => [:create]
  resources :rooms, :only => [:create, :show]
 
  

  get 'snows/new/:category' => 'snows#new'

end

