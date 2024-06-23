json.extract! juego, :id, :nombre, :descripcion, :created_at, :updated_at
json.url juego_url(juego, format: :json)
