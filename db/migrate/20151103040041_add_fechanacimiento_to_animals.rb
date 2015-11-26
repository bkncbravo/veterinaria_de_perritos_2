class AddFechanacimientoToAnimals < ActiveRecord::Migration
  def change
    add_column :animals, :fechanacimiento, :date
  end
end
