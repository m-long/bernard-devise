json.extract! device, :id, :name, :location_id, :device_model_id, :created_at, :updated_at
json.url device_url(device, format: :json)
