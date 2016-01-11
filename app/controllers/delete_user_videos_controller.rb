class DeleteUserVideosController < ApplicationController

  def index
  end

  def create
    @delete_user_video = DeleteUserVideo.new(delete_user_video_params)

    if @delete_user_video.save
      # render success in Jbuilder
    else
      render json: { message: "400 Bad Request" }, status: :bad_request
    end
  end

  def destroy

  end

  private
  def delete_user_video_params
    params.require(:delete_user_video).permit(:user_id, :technique_id, :video_id, :name, :size, :ssl_url, :thumb_name, :thumb_size, :thumb_ssl_url)
  end

end


