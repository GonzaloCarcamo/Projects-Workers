Rails.application.routes.draw do
  resources :workers
  resources :projects
  get 'workers/index', to:'projects#index', as:'project_index'
  get 'projects/:id', to: 'projects#show', as: 'projects_show'
  post 'projects/:project_id/workers', to: 'projects_workers#create', as:'projects_workers'
  delete 'projects/:project_id/wokers/:worker_id', to: 'projects_workers#destroy', as: 'delete_project_worker'
  root 'projects#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
