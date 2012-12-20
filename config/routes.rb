CourseProject::Application.routes.draw do
  root to: "posts#index"
  #match '/show',  to: 'posts#show'
  resources :posts do
    resources :comments
  end

end
