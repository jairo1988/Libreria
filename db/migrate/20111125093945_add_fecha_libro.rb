class AddFechaLibro < ActiveRecord::Migration
  def change
    add_column :libros, :fecha_disponible, :datetime
  end
end
