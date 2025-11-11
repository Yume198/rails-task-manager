Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Manual Routes Section (commented out before refactoring)
  # # list tasks
  # get "/tasks", to: "tasks#index", as: :tasks
  # # add a new task
  # get "/tasks/new", to: "tasks#new", as: :new_task
  # post "/tasks", to: "tasks#create"
  # # show new task
  # get "/tasks/:id", to: "tasks#show", as: :task
  # # edit and update a task
  # get "/tasks/:id/edit", to: "tasks#edit", as: :edit_task
  # patch "/tasks/:id", to: "tasks#update"
  # # remove a task
  # delete "/tasks/:id", to: "tasks#destroy"

  # Defines the root path route ("/")

  #  Refactored with #resources to keep it #DRY
  resources :tasks
  # root "posts#index"
  root "tasks#index"
end
