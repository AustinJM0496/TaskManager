# app/controllers/tasks_controller.rb

class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = Task.all
  #-----------------------------------------------------------------------------  
    # Use the sort_column and sort_direction methods to set the sorting parameters
    #@sort_column = sort_column
    #@sort_direction = sort_direction
    #@products = Product.order("#{@sort_column} #{@sort_direction}")
  #----------------------------------------------------------------------------- 
  
    @search = DuedateSearch.new(params[:search])
    @tasks = @search.scope
    #query by due date ^
    
  end
#-------------------------------------------------------------------------------
  #def order_column
  #  Product.column_names.include?(params[:sort_column]) ? params[:sort_column] : "name"
  #end
  
  #def sort_direction
  #  %w[asc desc].include?(params[:sort_direction]) ? params[:sort_direction] : "asc"
  #end
#-------------------------------------------------------------------------------
  # GET /tasks/1
  # GET /tasks/1.json
  def show
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.new(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: 'Task was successfully created.' }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to @task, notice: 'Task was successfully updated.' }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  # In your TasksController
  # app/controllers/tasks_controller.rb
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_url, notice: 'Task was successfully deleted.'
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
  def task_params
    params.require(:task).permit(:name, :description, :category, :duedate, :completed)
  end





end
