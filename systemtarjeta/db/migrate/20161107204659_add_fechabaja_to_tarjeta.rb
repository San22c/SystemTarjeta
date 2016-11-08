class AddFechabajaToTarjeta < ActiveRecord::Migration
  def change
    remove_column :premios, :fecha_baja, :datetime
    add_column :premios, :fecha_baja, :date
    add_column :usuarios, :fecha_baja, :date
  end
end
