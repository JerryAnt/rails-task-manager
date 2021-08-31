Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# resources :tasks
# As a user, I can view the details of a task
# Read all the tasks
get 'tasks', to: 'tasks#index', as: :tasks

# As a user, I can add a new task
get 'tasks/new', to: 'tasks#new'
# As a user, I can view the details of a task
# Read 1 task
get 'tasks/:id' => 'tasks#show', as: :task
post 'tasks', to: 'tasks#create'



# As a user, I can edit a task
get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
patch 'tasks/:id', to: 'tasks#update'

# As a user, I can remove a task
delete 'tasks/:id', to: 'tasks#destroy'
end
