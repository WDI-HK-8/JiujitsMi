json.array! @users do |user|
  json.id user.id
  json.email user.email
  json.name user.name
  json.membership_type user.membership_type
  json.status user.status
end