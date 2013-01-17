CourseProject::Application.routes.draw do
  root to: "posts#index"
  #match '/show',  to: 'posts#show'
  resources :posts do
    resources :comments
    resources :votes
  end
  resources :users, only: [:create]

  get 'register', to: 'users#new', as: 'register'
  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'profile/:id', to: 'users#show', as: 'profile'
end


