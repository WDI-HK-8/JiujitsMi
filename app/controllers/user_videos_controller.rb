class UserVideosController < ApplicationController
# The param[:transloadit] is automatically decoded for you
  # include Transloadit::Rails::ParamsDecoder

  def index
    @user_videos = Technique.find(params[:technique_id]).user_videos.all
  end


  def destroy
    @user_video = UserVideo.find_by_id(params[:id])

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



  def new
  end

  def create

    Rails.logger.info("PARAMS: #{params[:transloadit].inspect}")

    create_params = user_video_params

    transloadit = params[:transloadit]

    create_params[:name] = transloadit[:results][:iphone_video][0][:name]
    create_params[:size] = transloadit[:results][:iphone_video][0][:size]
    create_params[:cost] = transloadit[:results][:iphone_video][0][:cost]
    create_params[:duration] = transloadit[:results][:iphone_video][0][:meta][:duration]
    create_params[:url] = transloadit[:results][:iphone_video][0][:url]
    create_params[:ssl_url] = transloadit[:results][:iphone_video][0][:ssl_url]


    create_params[:thumb_name] = transloadit[:results][:extracted_thumbs][0][:name]
    create_params[:thumb_size] = transloadit[:results][:extracted_thumbs][0][:size]
    create_params[:thumb_cost] = transloadit[:results][:extracted_thumbs][0][:cost]
    create_params[:thumb_url] = transloadit[:results][:extracted_thumbs][0][:url]
    create_params[:thumb_ssl_url] = transloadit[:results][:extracted_thumbs][0][:ssl_url]


    @user_video = Technique.find(params[:technique_id]).user_videos.new(create_params)

    if @user_video.save
      # render success in Jbuilder

    else
      render json: { message: "400 Bad Request" }, status: :bad_request
    end

  end

  private
  def user_video_params
    params.permit(:technique_id)
  end
end



# [

# {"id"=>"59e870009f3011e5912a15f90576dd41",


#  "name"=>"IMG_3813.mp4",
#  "basename"=>"IMG_3813",
#  "ext"=>"mp4",


#  "size"=>360371,



#  "mime"=>"video/mp4",
#  "type"=>"video",
#  "field"=>"my_file",
#  "md5hash"=>"a5f1fdb6405dd15aa64dd9a871e69094",
#  "original_id"=>"592ce8309f3011e58efb456a21d15765",
#  "original_basename"=>"IMG_3813",
#  "original_path"=>"/",
#  "original_md5hash"=>"3e3b6d353d140fbd445ded402d40d94b",
#  "from_batch_import"=>false,



#  "url"=>"http://grapplegame-user-videos-dev.s3.amazonaws.com/59/e870009f3011e5912a15f90576dd41/IMG_3813.mp4",



#  "ssl_url"=>"https://grapplegame-user-videos-dev.s3.amazonaws.com/59/e870009f3011e5912a15f90576dd41/IMG_3813.mp4",




#  "meta"=>{"duration"=>4.51,
#  "width"=>320,
#  "height"=>480,
#  "framerate"=>25,
#  "video_bitrate"=>505664,
#  "overall_bitrate"=>639949,
#  "aspect_ratio"=>"0.667",
#  "video_codec"=>"ffh264",
#  "audio_bitrate"=>128000,
#  "audio_samplerate"=>44100,
#  "audio_channels"=>1,
#  "audio_codec"=>"ffaac",
#  "seekable"=>true,
#  "date_recorded"=>nil,
#  "date_file_created"=>"1904/01/01 00:00:00",
#  "date_file_modified"=>"2015/12/10 11:22:53 GMT",
#  "device_vendor"=>"Apple",
#  "device_name"=>nil,
#  "device_software"=>nil,
#  "latitude"=>nil,
#  "longitude"=>nil,
#  "rotation"=>0,
#  "album"=>nil,
#  "comment"=>nil,
#  "year"=>"2015-07-23T10:11:13+1000",
#  "beats_per_minute"=>nil,
#  "genre"=>nil,
#  "artist"=>nil,
#  "performer"=>nil,
#  "lyrics"=>nil,
#  "title"=>nil,
#  "band"=>nil,
#  "disc"=>nil,
#  "track"=>nil}


# , "queue"=>"live",

#  "cost"=>806089,

#  "signed_url"=>"http://grapplegame-user-videos-dev.s3.amazonaws.com/59/e870009f3011e5912a15f90576dd41/IMG_3813.mp4?AWSAccessKeyId=AKIAI2HFAEDPY7VAQ6GA&Expires=1449747477&Signature=aAbYnN3TXcHDbTuVAZqVGCWniKc%3D",

#  "signed_ssl_url"=>"https://grapplegame-user-videos-dev.s3.amazonaws.com/59/e870009f3011e5912a15f90576dd41/IMG_3813.mp4?AWSAccessKeyId=AKIAI2HFAEDPY7VAQ6GA&Expires=1449747477&Signature=aAbYnN3TXcHDbTuVAZqVGCWniKc%3D"}

# ]
