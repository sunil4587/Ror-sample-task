class TasksController < ApplicationController
  def index
    @tasks = Task.order('id desc').all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      flash[:success] = "Task saved successfully"
      redirect_to tasks_path()
    else
      render :new
    end
  end

  def edit
    begin
      @task = Task.find(params[:id])
    rescue => e
      flash[:danger] = e
      redirect_to tasks_path()
    end
  end

  def update
    @task = Task.find(params[:id])

    if @task.update(task_params)
      flash[:success] = "Task updated successfully"
      redirect_to tasks_path()
    else
      render :edit
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    
    flash[:success] = "Task deleted successfully"
    redirect_to tasks_path()
  end

  private
    def task_params
      params.require(:task).permit(:title, :due_date, :status, :notes)
    end
end
