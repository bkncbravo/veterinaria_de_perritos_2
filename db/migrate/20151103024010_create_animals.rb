class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :nombre
      t.string :raza
      t.string :color
      t.string :tamano
      t.string :fechanacimiento
      t.references :cliente, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
