class AddUserToTarjeta < ActiveRecord::Migration
  def change
    remove_foreign_key :tarjeta, :usuario
    add_reference :tarjeta, :user, index: true, foreign_key: true
  end
end
