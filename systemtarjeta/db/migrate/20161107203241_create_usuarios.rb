class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellidos
      t.string :email
      t.string :telefono
      t.string :direccion
      t.string :password
      t.string :rol

      t.timestamps null: false
    end
  end
end
