class AddTextDescripcion < ActiveRecord::Migration
  def change
    remove_column(:libros, :descripcion)
    add_column(:libros, :descripcion, :text)
  end
end
