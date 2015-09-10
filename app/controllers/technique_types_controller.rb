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

  def destroy
    @technique_type = TechniqueType.find_by_id(params[:id])

    if @technique_type.nil?
      render json: { message: "Cannot find technique_type" }, status: :not_found
    else
      if @technique_type.destroy
        render json: { message: "Successfully deleted" }, status: :no_content
      else
        render json: { message: "Unsuccessfully deleted" }, status: :bad_request 
      end
    end
  end

  private
  def technique_type_params
    params.require(:technique_type).permit(:name)
  end
end
