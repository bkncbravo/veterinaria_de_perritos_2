json.array!(@historials) do |historial|
  json.extract! historial, :id, :animal_id, :servicio_id
  json.url historial_url(historial, format: :json)
end
