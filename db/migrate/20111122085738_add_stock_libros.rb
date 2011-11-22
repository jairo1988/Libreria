class AddStockLibros < ActiveRecord::Migration
  def change
    add_column :libros, :stock, :integer
  end
end
