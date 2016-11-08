json.extract! usuario, :id, :nombre, :apellidos, :email, :telefono, :direccion, :password, :rol, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)