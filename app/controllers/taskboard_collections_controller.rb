class TaskboardCollectionsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_taskboard_collection, only: [:show, :edit, :update, :destroy]


  def index
    @taskboard_collections = TaskboardCollection.all

  end

  def show
      session[:taskboard] = @taskboard_collection.id
      redirect_to tasks_path
  end

  def new
    @taskboard_collection = TaskboardCollection.new

  end

  def edit
  end

  def create

    @taskboard_collection = TaskboardCollection.new(taskboard_collection_params)

    respond_to do |format|
      if @taskboard_collection.save
        format.html { redirect_to @taskboard_collection, notice: 'Taskboard was successfully created.' }
        format.json { render :index, status: :created, location: @taskboard_collection }
      else
        format.html { render :new }
        format.json { render json: @taskboard_collection.errors, status: :unprocessable_entity }
      end
    end

  end

  def update
    respond_to do |format|
      if @taskboard_collection.update(taskboard_collection_params)
        format.html { redirect_to @taskboard_collection, notice: 'Taskboard was successfully updated.' }
        format.json { render :index, status: :ok, location: @taskboard_collection }
      else
        format.html { render :edit }
        format.json { render json: @taskboard_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @taskboard_collection.destroy
    respond_to do |format|
      format.html { redirect_to taskboard_collections_url, notice: 'Taskboard was successfully destroyed.' }
      format.json { head :no_content }
      end
  end

  private
    def set_taskboard_collection
      @taskboard_collection = TaskboardCollection.find(params[:id])
    end

    def taskboard_collection_params
      params.require(:taskboard_collection).permit(:name)
    end
end
