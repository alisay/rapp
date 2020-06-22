Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/", to: "posts#home", as: "root"

  post "/post", to: "posts#create"

  get "/post/new", to: "posts#new", as: "new_post"

end
