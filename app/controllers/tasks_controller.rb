class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def new
    @task = Task.new
  end

  def edit
  end

  def create
    @task = Task.new(task_params)
      if @task.save
        flash[:success] = 'Task was successfully created.'
        redirect_to @task.contact
      else
         render :new
      end
  end

  def update
    if @task.update(task_params)
      flash[:success] = 'Task was successfully updated.'
      redirect_to @task.contact
    else
      render :edit 
    end
  end

  def destroy
    @task.destroy
      flash[:success] ='Task was successfully destroyed.'
      redirect_to @task.contact
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def task_params
      params.require(:task).permit(:task_date, :contact_name, :task_desc, :contact_id)
    end
end
