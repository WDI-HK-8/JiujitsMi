class StepsController < ApplicationController

  def index
    @steps = Technique.find(params[:technique_id]).steps.all
  end

  def create
    @step = Technique.find(params[:technique_id]).steps.new(step_params)

    if @step.save
      # render success in Jbuilder
    else
      render json: { message: "400 Bad Request" }, status: :bad_request
    end
  end

  def destroy
    @step = Step.find_by_id(params[:id])

    if @step.nil?
      render json: { message: "Cannot find step" }, status: :not_found
    else
      if @step.destroy
        render json: { message: "Successfully deleted" }, status: :no_content
      else
        render json: { message: "Unsuccessfully deleted" }, status: :bad_request 
      end
    end
  end

  private
  def step_params
    params.require(:step).permit(:index, :instruction)
  end

end
