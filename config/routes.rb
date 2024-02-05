Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  root 'tasks#index'
  get 'index' => 'tasks#index', as: :index
  get 'tasks/:id' => 'tasks#show', as: :show
  get 'new' => 'tasks#new', as: :new_task
  post 'create' => 'tasks#create', as: :create
  get 'tasks/:id/edit' => 'tasks#edit', as: :edit
  patch 'tasks/:id' => 'tasks#update', as: :update
  delete 'tasks/:id/destroy' => 'tasks#destroy', as: :destroy

  # Defines the root path route ('/")
  # root "posts#index"
end
