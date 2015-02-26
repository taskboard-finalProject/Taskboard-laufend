class StartsController < ApplicationController
  before_action :set_start, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @starts = Start.all
    respond_with(@starts)
  end

  def show
    respond_with(@start)
  end

  def new
    @start = Start.new
    respond_with(@start)
  end

  def edit
  end

  def create
    @start = Start.new(start_params)
    @start.save
    respond_with(@start)
  end

  def update
    @start.update(start_params)
    respond_with(@start)
  end

  def destroy
    @start.destroy
    respond_with(@start)
  end

  private
    def set_start
      @start = Start.find(params[:id])
    end

    def start_params
      params[:start]
    end
end
