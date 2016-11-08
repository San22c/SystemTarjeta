class CreatePremios < ActiveRecord::Migration
  def change
    create_table :premios do |t|
      t.string :concepto
      t.integer :stock
      t.integer :puntos
      t.datetime :fecha_baja

      t.timestamps null: false
    end
  end
end
