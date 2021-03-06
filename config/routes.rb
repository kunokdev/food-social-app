Rails.application.routes.draw do
  root 'posts#index'
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'


  resources :users
  resources :posts do
    resources :comments
    member do
      put 'upvote', to: 'posts#upvote'
      put 'unvote', to: 'posts#unvote'
    end
  end
  resources :comments
end
