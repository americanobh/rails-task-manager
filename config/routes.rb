Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index'
  delete 'tasks/:id', to: 'tasks#delete'
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'
  get   'task/:id/edit', to: 'task#edit', as: :edit_task
  patch 'tasks/:id/edit', to: 'tasks#update'
  get 'tasks/:id', to: 'tasks#show', as: :task
end
