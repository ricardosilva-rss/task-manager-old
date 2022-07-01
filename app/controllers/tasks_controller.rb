class TasksController < ApplicationController
  before_action :set_task, only: [:show]

  def show; end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_task
    @task = Task.find(params[:list_id])
  end

  def set_params
    params.require(:task).permit(:title, :description, :concluded, :start_date, :end_date, :address)
  end
end
