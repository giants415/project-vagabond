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
end
