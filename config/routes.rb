Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    get "/posts" => "posts#index"
    post "/posts" => "posts#create"
    get "/posts/:id" => "posts#show"
    patch "/posts/:id" => "posts#update"
    delete "/posts/:id" => "posts#destroy"
    get "/*path" => proc { [200, {}, [ActionView::Base.new.render(file: 'public/index.html')]] } 
  end
end
