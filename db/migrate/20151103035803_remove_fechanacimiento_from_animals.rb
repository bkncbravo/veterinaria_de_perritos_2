class RemoveFechanacimientoFromAnimals < ActiveRecord::Migration
  def change
    remove_column :animals, :fechanacimiento, :string
  end
end
