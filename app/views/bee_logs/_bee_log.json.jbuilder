json.extract! bee_log, :id, :temperature, :humidity, :colony_name, :longitude, :latitude, :status, :monitor_data, :created_at, :updated_at
json.url bee_log_url(bee_log, format: :json)