class AdddFechabaa < ActiveRecord::Migration
  def change
    add_column :users, :fecha_baja, :date

  end
end
