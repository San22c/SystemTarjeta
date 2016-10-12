class ChangeFechaBaja < ActiveRecord::Migration
  def change
    remove_column :clientes, :fecha_baja, :datetime
    add_column :clientes, :fecha_baja, :date
  end
end
