json.array! @technique_types do |technique_type|
  json.index technique_type.index
  json.id technique_type.id
  json.name technique_type.name
  json.position_id technique_type.position_id
  json.techniques technique_type.techniques
end
