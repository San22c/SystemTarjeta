class Removeusuaario < ActiveRecord::Migration
  def change
    remove_index :tarjeta, name: "index_tarjeta_on_usuario_id"

  end
end
