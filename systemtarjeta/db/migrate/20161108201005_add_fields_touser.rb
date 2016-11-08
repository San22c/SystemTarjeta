class AddFieldsTouser < ActiveRecord::Migration
  def change
    add_column :users, :nombre, :string
    add_column :users, :apellidos, :string
    add_column :users, :telefono, :string
    add_column :users, :direccion, :string
    add_column :users, :rol, :string
  end
end
