Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get '/about', to: "root#about"
  get '/mizan', to: "root#mizan"
  # get '/index', to: "root#index"
  root "root#index"

  get '/response', to: "root#api"
  get '/user/:id/:name', to: 'root#user'

  post '/add', to: "root#add"

  # delete '/delete/:id', to: "root#delete"

end
