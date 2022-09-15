Rails.application.routes.draw do
  resources :todos, only: [:new, :create, :index]

  root "todos#index"
end
