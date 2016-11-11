class CreateMovimientos < ActiveRecord::Migration
  def change
    create_table :movimientos do |t|
      t.references :user, index: true, foreign_key: true
      t.references :tarjetum, index: true, foreign_key: true
      t.decimal :importe
      t.integer :puntos
      t.references :premio, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
