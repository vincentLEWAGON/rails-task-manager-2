class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to index_path, notice: 'La tâche a été créée avec succès.'
    else
      render :new, notice: "La tâche n'a pas pu être créée."
    end
  end

  def edit
  end

  def update
    if @task.update(task_params)
    redirect_to show_path, notice: 'La tâche a été modifiée avec succès.'
    else
      render :edit, notice: "La tâche n'a pas pu être modifiée."
    end
  end

  def destroy
    @task.destroy
    redirect_to index_path, notice: 'La tâche a été supprimée avec succès'
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
