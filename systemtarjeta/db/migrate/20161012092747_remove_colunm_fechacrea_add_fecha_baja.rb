class RemoveColunmFechacreaAddFechaBaja < ActiveRecord::Migration
  def change
    remove_column :clientes, :fecha_crea, :datetime
    add_column :clientes, :fecha_baja, :datetime

  end
end
