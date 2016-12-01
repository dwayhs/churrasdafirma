json.extract! event, :id, :when, :description, :where, :created_at, :updated_at
json.url event_url(event, format: :json)