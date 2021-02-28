Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"
  resources :prototypes, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: [:create]
  end

  resources :users, only: [:show] do
  end

  post '/prototypes/new' => 'prototypes#new'
  post '/prototypes/:id' => 'prototypes#show'
end
