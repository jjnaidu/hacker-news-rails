Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  # get '/posts' => 'posts#index'
  # get '/posts/new' => 'posts#new'
  # post '/posts' => 'posts#create'

  resources :posts do
    resources :comments
  end

  # resources :users do
  #   resources :posts
  # end
end
