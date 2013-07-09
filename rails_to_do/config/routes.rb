RailsToDo::Application.routes.draw do
  root :to => 'welcome#index'
  get '/todos' => 'todos#index'
  get '/todos/new' => 'todos#new'
  post '/todos' => 'todos#create'

  get '/todos/:id' => 'todos#show'

  get '/todos/:id/edit' => 'todos#edit'
  post '/todos/:id' => 'todos#edit'
end


# rails guide on routing