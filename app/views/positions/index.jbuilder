json.array! @positions do |position|
  json.id position.id
  json.name position.name
  json.user_id position.user_id
end
