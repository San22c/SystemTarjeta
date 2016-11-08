class CreateTarjeta < ActiveRecord::Migration
  def change
    create_table :tarjeta do |t|
      t.string :numref
      t.integer :puntos
      t.references :usuario, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
