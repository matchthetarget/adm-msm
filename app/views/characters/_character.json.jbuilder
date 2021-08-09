json.extract! character, :id, :actor_id, :movie_id, :name, :created_at,
              :updated_at
json.url character_url(character, format: :json)
