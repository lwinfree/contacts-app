json.first contact.first_name
json.last contact.last_name
json.email contact.email
json.phone contact.phone_number
json.middle contact.middle_name
json.bio contact.bio
json.user contact.user
json.user current_user
json.group contact.groups

json.formatted do
  json.updated_at contact.friendly_updated_at
  json.full_name contact.full_name
  json.japan_phone_number contact.japanese_prefix
end