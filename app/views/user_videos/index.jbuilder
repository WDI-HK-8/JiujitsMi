json.array! @user_videos do |user_video|
  json.id user_video.id
  json.index user_video.index
  json.video user_video.video
  json.technique_id user_video.technique_id
end
