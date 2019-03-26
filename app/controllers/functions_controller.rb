class FunctionsController < ApplicationController
  before_action :set_function, only: [:show, :update, :destroy]

  # GET /functions
  def index
    @functions = Function.search(params)
    if(@functions.to_a.size == 0)
      function = Function.new(displayed_at: Date.strptime(params[:date_filter], "%Y-%m-%d"),movie_id: params[:movie_id])
      function.save!
      @functions = Function.search(params)
    end
    render json: @functions
  end

  # GET /functions/1
  def show
    render json: @function
  end

  # POST /functions
  def create
    @function = Function.new(function_params)

    if @function.save
      render json: @function, status: :created, location: @function
    else
      render json: @function.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /functions/1
  def update
    if @function.update(function_params)
      render json: @function
    else
      render json: @function.errors, status: :unprocessable_entity
    end
  end

  # DELETE /functions/1
  def destroy
    @function.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_function
      @function = Function.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def function_params
      params.require(:function).permit(:displayed_at, :movie_id)
    end
end
