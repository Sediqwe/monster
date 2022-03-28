json.extract! game, :id, :name, :link, :description, :active, :created_at, :updated_at
json.url game_url(game, format: :json)
