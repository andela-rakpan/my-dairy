json.extract! event, :id, :description, :category_id, :user_id, :created_at, :updated_at
json.url event_url(event, format: :json)
