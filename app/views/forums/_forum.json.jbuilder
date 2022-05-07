json.extract! forum, :id, :title, :desc, :user_id, :active, :created_at, :updated_at
json.url forum_url(forum, format: :json)
