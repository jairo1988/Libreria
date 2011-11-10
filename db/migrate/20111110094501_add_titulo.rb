class AddTitulo < ActiveRecord::Migration
  def change
    add_column :libros, :titulo, :string
    rename_column(:cuentas, :pais, :provincia)
  end
end
