class TechniqueTypesController < ApplicationController

  def index
    @technique_types = Position.find(params[:position_id]).technique_types.all
  end

  def create
    @technique_type = Position.find(params[:position_id]).technique_types.new(technique_type_params)

    if @technique_type.save
      # render success in Jbuilder
    else
      render json: { message: "400 Bad Request" }, status: :bad_request
    end
  end

 private
  def technique_type_params
    params.require(:technique_type).permit(:name)
  end
end
