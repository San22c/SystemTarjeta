class AddTelfonoDniFechacreaToCliente < ActiveRecord::Migration
  def change
    add_column :clientes, :telefono, :string
    add_column :clientes, :email, :string
    add_column :clientes, :fecha_crea, :datetime
  end
end
