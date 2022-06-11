json.extract! message, :id, :title, :desc, :user_id, :active, :forumal_id, :created_at, :updated_at
json.url message_url(message, format: :json)
