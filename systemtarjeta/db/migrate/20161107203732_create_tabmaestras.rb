class CreateTabmaestras < ActiveRecord::Migration
  def change
    create_table :tabmaestras do |t|
      t.string :clave
      t.string :valor
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
