class PositionsController < ApplicationController

  def index
    @positions = Position.all
  end

  def create
    # @position = Position.new(position_params)
    # @position = current_user.position = Position.new(position_params)   
    @position = current_user.positions.new(position_params)


    if @position.save
      # render success in Jbuilder
    else
      render json: { message: "400 Bad Request" }, status: :bad_request
    end
  end

  private
  def position_params
    params.require(:position).permit(:name)
  end

end
