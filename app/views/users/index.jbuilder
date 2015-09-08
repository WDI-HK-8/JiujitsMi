json.array! @users do |user|
  json.id user.id
  json.email user.email
  json.name user.name
  json.username user.username
  json.country user.country
end