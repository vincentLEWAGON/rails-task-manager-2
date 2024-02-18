Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  root 'tasks#index' # je choisis de rediriger vers la page de jeu directement
  get 'index' => 'tasks#index', as: :index # je crée une route pour l'index des tâches'
  get 'tasks/:id' => 'tasks#show', as: :show #  je créee une route pour la page de tâche
  get 'new' => 'tasks#new', as: :new_task # je crée une route pour la page de création de tâche
  post 'create' => 'tasks#create', as: :create # je crée une route pour l'action de créer une tâche
  get 'tasks/:id/edit' => 'tasks#edit', as: :edit # je crée une route pour la page d'édition de tâche
  patch 'tasks/:id' => 'tasks#update', as: :update  # je crée une route pour l'action de mettre à jour une tâche
  delete 'tasks/:id/destroy' => 'tasks#destroy', as: :destroy # je crée une route pour l'action de supprimer une tâche

  # Defines the root path route ('/")
  # root "posts#index"
end
