class AddPhotoToPremiosTiendas < ActiveRecord::Migration
  def change
    add_column :tiendas, :photo, :string

    add_column :premios, :photo, :string

  end
end
