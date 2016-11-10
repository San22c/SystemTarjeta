class AddFechabajaTarjeta < ActiveRecord::Migration
  def change
    add_column :tarjeta, :fecha_baja, :date
  end
end
