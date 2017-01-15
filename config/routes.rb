Rails.application.routes.draw do
  devise_for :user
  root 'shuffles#index'
  resources :foods do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show]



  get 'shuffle'    => 'shuffles#index'
  get 'shuffle/new' => 'shuffles#new'
  get 'shuffle'     => 'shuffles#create'
  get 'shuffle/show' => 'shuffles#show'
  get 'comment/new' => 'comments#new'
  post  'comments'      =>  'comments#create'  
  get  'users/:id'   =>  'users#show'


end
