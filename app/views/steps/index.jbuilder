json.array! @steps do |step|
  json.id step.id
  json.index step.index
  json.instruction step.instruction
  json.technique_id step.technique_id
end
