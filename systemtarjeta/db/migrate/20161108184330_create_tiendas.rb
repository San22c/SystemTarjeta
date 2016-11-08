class CreateTiendas < ActiveRecord::Migration
  def change
    create_table :tiendas do |t|
      t.string :nombre
      t.string :descripcion
      t.string :url
      t.date :fecha_baja

      t.timestamps null: false
    end
  end
end
