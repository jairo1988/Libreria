class RenameLibros < ActiveRecord::Migration
  def change
    remove_column :libros, :categoria_id
    add_column :libros, :categoria_id, :integer
  end
end
