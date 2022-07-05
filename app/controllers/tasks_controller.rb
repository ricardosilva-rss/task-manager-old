class TasksController < ApplicationController
  before_action :set_task, only: [:show, :new]

  def show; end

  def new
    @task = Task.new
    @task.list_id = @list.id
  end

  def create
    @list = List.find(params[:list_id])
    @task = Task.new(task_params)
    @task = @list.save

    if @task.save
      redirect_to list_path(@list), notice: 'List was successfully created.'
    else
      render :new
    end
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

  def task_params
    params.require(:task).permit(:title, :description, :concluded, :start_date, :end_date, :address)
  end
end
