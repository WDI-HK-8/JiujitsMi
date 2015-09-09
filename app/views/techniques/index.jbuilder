json.array! @techniques do |technique|
  json.name technique.name
  json.video_url technique.video_url
  json.other_notes technique.other_notes
  json.position_id technique.technique_type_id
end
