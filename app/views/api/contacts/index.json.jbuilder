json.array! @contacts do |contact|
  json.id contact.id
  json.first_name contact.first_name
  json.last_name contact.last_name
  json.phone_number contact.phone_number
  json.email contact.email
  json.updated_at contact.friendly_updated_at
  json.full_name contact.full_name
  json.middle_name contact.middle_name
  json.bio contact.bio
  json.user_info current_user
end
