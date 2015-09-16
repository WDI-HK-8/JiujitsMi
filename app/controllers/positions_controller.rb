class PositionsController < ApplicationController
  before_action :authenticate_user!

  def index
    @positions = current_user.positions.all
  end

  def create
    @position = current_user.positions.new(position_params)
    if @position.save
      # render success in Jbuilder
    else
      render json: { message: "400 Bad Request" }, status: :bad_request
    end
  end

  def destroy
    @position = Position.find_by_id(params[:id])

    if @position.nil?
      render json: { message: "Cannot find position" }, status: :not_found
    else
      if @position.destroy
        render json: { message: "Successfully deleted" }, status: :no_content
      else
        render json: { message: "Unsuccessfully deleted" }, status: :bad_request 
      end
    end
  end

  def update
    @position = Position.find_by_id(params[:id])

    if @position.nil?
      render json: { message: "Cannot find technique" }, status: :not_found
    else
      @position.update(position_params)
    end
  end

  private
  def position_params
    params.require(:position).permit(:name, :index)
  end
end
