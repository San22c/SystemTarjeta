json.extract! tienda, :id, :nombre, :descripcion, :url, :fecha_baja, :created_at, :updated_at
json.url tienda_url(tienda, format: :json)