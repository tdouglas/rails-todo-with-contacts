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
    if urgency == "on"
      urgency = true
    else
      urgency = false
    end
    task.save
    redirect_to '/todos'
  end

  def show
    @task = Task.find(params[:id])
  end
end
