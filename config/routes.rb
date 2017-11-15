Rails.application.routes.draw do

  root 'sessions#new'
  get   'signup' => 'users#new'
  get   'login'  => 'sessions#new'
  post  'login'  => 'sessions#create'
  get   'logout' => 'sessions#destroy'
  resources :users do
    resources :games
  end
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:edit, :create, :new, :update]
end
