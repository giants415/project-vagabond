Rails.application.routes.draw do
  root "posts#index"

  get "/posts", to: "posts#index", as: "posts"
  get "/posts/:id", to: "posts#show", as: "post"
end
