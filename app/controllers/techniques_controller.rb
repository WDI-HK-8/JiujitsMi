class TechniquesController < ApplicationController


  def create
    @technique = TechniqueType.find(params[:technique_type_id]).techniques.new(technique_params)

    if @technique.save
      # render success in Jbuilder
    else
      render json: { message: "400 Bad Request" }, status: :bad_request
    end
  end

private
  def technique_params
    params.require(:technique).permit(:name, :video_url, :other_notes)
  end
end
