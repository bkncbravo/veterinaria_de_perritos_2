json.array!(@servicios) do |servicio|
  json.extract! servicio, :id, :tiposervisio, :tarifa
  json.url servicio_url(servicio, format: :json)
end
