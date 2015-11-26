json.array!(@animals) do |animal|
  json.extract! animal, :id, :nombre, :raza, :color, :tamano, :fechanacimiento, :cliente_id
  json.url animal_url(animal, format: :json)
end
