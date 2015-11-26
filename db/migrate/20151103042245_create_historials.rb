class CreateHistorials < ActiveRecord::Migration
  def change
    create_table :historials do |t|
      t.references :animal, index: true, foreign_key: true
      t.references :servicio, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
