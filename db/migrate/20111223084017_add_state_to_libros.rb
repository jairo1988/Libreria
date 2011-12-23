class AddStateToLibros < ActiveRecord::Migration
  def change
    remove_column :libros, :proximolibro
    add_column :libros, :state, :string

  end
end
