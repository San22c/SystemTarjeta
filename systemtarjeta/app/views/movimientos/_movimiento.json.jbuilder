json.extract! movimiento, :id, :user_id, :tarjetum_id, :importe, :puntos, :premio_id, :created_at, :updated_at
json.url movimiento_url(movimiento, format: :json)