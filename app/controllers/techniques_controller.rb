class TechniquesController < ApplicationController

  def index
    @techniques = TechniqueType.find(params[:technique_type_id]).techniques.all
  end

  def create
    @technique = TechniqueType.find(params[:technique_type_id]).techniques.new(technique_params)

    if @technique.save
      # render success in Jbuilder
    else
      render json: { message: "400 Bad Request" }, status: :bad_request
    end
  end

  def destroy
    @technique = Technique.find_by_id(params[:id])

    if @technique.nil?
      render json: { message: "Cannot find technique" }, status: :not_found
    else
      if @technique.destroy
        render json: { message: "Successfully deleted" }, status: :no_content
      else
        render json: { message: "Unsuccessfully deleted" }, status: :bad_request 
      end
    end
  end

  def update
    @technique = Technique.find_by_id(params[:id])

    if @technique.nil?
      render json: { message: "Cannot find technique" }, status: :not_found
    else
      @technique.update(technique_params)
    end
  end

private
  def technique_params
    params.require(:technique).permit(:name, :video_url, :other_notes)
  end
end
