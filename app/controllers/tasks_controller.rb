class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def edit
    @task = Task.new
  end

  def delete
    @task = Task.find(params[:id])
    @task.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to tasks_path
  end

  def create
    @task = Task.new(task_params)
    @task.save
  # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to task_path(@task)
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)

    redirect_to restaurant_path(@restaurant)
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
