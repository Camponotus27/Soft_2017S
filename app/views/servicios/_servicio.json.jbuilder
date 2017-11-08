json.extract! servicio, :id, :nombre, :tarifa, :created_at, :updated_at
json.url servicio_url(servicio, format: :json)
