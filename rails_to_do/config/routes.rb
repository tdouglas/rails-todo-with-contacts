RailsToDo::Application.routes.draw do
  root :to => 'welcome#index'
  get '/todos' => 'todos#index'
  get '/todos/new' => 'todos#new'
  post '/todos' => 'todos#create'

  get '/todos/:id' => 'todos#show'
end


# rails guide on routing