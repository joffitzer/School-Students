Rails.application.routes.draw do

  get '/schools', to: "schools#index", as: 'schools'
  get '/schools/new', to: "schools#new", as: 'new_school'
  get '/schools/:id', to: "schools#show", as: 'school'
  post '/schools', to: "schools#create"
  get '/schools/:id/edit', to: "schools#edit", as: 'edit_school'
  patch '/schools/:id', to: "schools#update"
  delete '/schools/:id', to: 'schools#delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get '/students', to: "students#index", as: 'students'
  get '/students/new', to: 'students#new', as: 'new_student'
  post '/students', to: 'students#create'
  get '/students/:id', to: 'students#show', as: 'student'
  get '/students/:id/edit', to: 'students#edit', as: 'edit_student'
  patch 'students/:id', to: 'students#update'
  delete '/students/:id', to: 'students#delete', as: 'delete_student'


  get "/support", to: 'users#support', as:  'users'
  post "/support", to: 'users#create'
end
