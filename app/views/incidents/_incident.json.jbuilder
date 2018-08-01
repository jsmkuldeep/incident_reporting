json.extract! incident, :id, :incident_type_id, :description, :created_at, :updated_at
json.url incident_url(incident, format: :json)
