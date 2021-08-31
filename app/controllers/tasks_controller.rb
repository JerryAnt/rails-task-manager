class TasksController < ApplicationController
  before_action :find_task, only: [:show, :edit, :update, :destroy]

  def index
    # As a user, I can list tasks
    @tasks = Task.all
  end

  def show
    # As a user, I can view the details of a task
  end

  def new
    # As a user, I can add a new task
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path(@path)
  end

  def edit; end
    # As a user, I can edit a task (mark as completed / update title & details)

  def update
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    # As a user, I can remove a task
  @task.destroy
  redirect_to tasks_path
  end

private
  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def find_task
    @task = Task.find(params[:id])
  end
end
