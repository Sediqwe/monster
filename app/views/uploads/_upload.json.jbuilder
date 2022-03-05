json.extract! upload, :id, :title, :project_id, :version, :desc, :user_id, :created_at, :updated_at
json.url upload_url(upload, format: :json)
