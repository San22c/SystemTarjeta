json.extract! cliente, :id, :nombre, :apellidos, :created_at, :updated_at, :telefono,:email
json.url cliente_url(cliente, format: :json)
