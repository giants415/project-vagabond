Rails.application.routes.draw do
  root to: "users#index"

  get "/users", to: "users#index", as: 'users'
  get "/users/new", to: "users#new", as: "new_user"
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show", as: "user"
  get "/users/:id/edit", to: "users#edit", as: "edit_user"
  patch "/users/:id", to: "users#update"

  get '/login', to: 'sessions#new', as: 'new_session'
  get '/logout', to: 'sessions#destroy', as: 'logout'
  post '/sessions', to: 'sessions#create', as: 'sessions'

  get "/posts", to: "posts#index", as: "posts"
  get "/posts/new", to: "posts#new", as: "new_post"
  post "/posts", to: "posts#create"
  get "/posts/:id", to: "posts#show", as: "post"
  get "/users/:user_id/posts", to: "post_users#index", as: "user_posts"

  get '/cities', to: 'cities#index', as: 'cities'
  get '/cities/new', to: 'cities#new', as: 'new_city'
  post '/cities', to: 'cities#create'
  get '/cities/:id', to: 'cities#show', as: 'city'
end
