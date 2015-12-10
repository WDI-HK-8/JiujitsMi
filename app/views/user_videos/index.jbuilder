json.array! @user_videos do |user_video|
  json.id             user_video.id
  json.technique_id   user_video.technique_id
  json.name           user_video.name
  json.size           user_video.size
  json.cost           user_video.cost
  json.duration       user_video.duration
  json.url            user_video.url
  json.ssl_url        user_video.ssl_url
  json.thumb_name     user_video.thumb_name
  json.thumb_size     user_video.thumb_size
  json.thumb_cost     user_video.thumb_cost
  json.thumb_url      user_video.thumb_url
  json.thumb_ssl_url  user_video.thumb_ssl_url

end
