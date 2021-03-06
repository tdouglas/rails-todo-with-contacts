class TodosController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
  end

  def create
    task = Task.new
    task.name = params[:name]
    task.description = params[:description]
    task.due_date = params[:due_date]
    task.urgent = params[:urgent]
    if task.urgent == "on"
      task.urgent = true
    else
      task.urgent = false
    end
    task.save
    redirect_to '/todos'
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    task.name = params[:name]
    task.description = params[:description]
    task.due_date = params[:due_date]
    task.urgent = params[:urgent]
    if task.urgent == "true"
      task.urgent = true
    else
      task.urgent = false
    end
    task.save
    redirect_to "/todos/#{task.id}'"
  end
end
