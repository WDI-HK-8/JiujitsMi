class UserVideosController < ApplicationController

  def index
    @user_videos = Technique.find(params[:technique_id]).user_videos.all
  end

  def create
    @user_video = Technique.find(params[:technique_id]).user_videos.new(user_video_params)

    if @user_video.save
      # render success in Jbuilder
    else
      render json: { message: "400 Bad Request" }, status: :bad_request
    end
  end

  def destroy
    @user_video = user_video.find_by_id(params[:id])

    if @user_video.nil?
      render json: { message: "Cannot find user_video" }, status: :not_found
    else
      if @user_video.destroy
        render json: { message: "Successfully deleted" }, status: :no_content
      else
        render json: { message: "Unsuccessfully deleted" }, status: :bad_request 
      end
    end
  end

  private
  def user_video_params
    params.require(:user_video).permit(:index, :video)
  end
end
