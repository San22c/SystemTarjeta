class AddUserToTarjeta5 < ActiveRecord::Migration
  def change
    remove_column :tarjeta, :usuario_id
  end
end
