json.extract! project, :id, :name, :desc, :active, :private, :created_at, :updated_at
json.url project_url(project, format: :json)
