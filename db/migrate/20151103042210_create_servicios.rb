class CreateServicios < ActiveRecord::Migration
  def change
    create_table :servicios do |t|
      t.string :tiposervisio
      t.integer :tarifa

      t.timestamps null: false
    end
  end
end
