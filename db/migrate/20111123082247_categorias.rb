class Categorias < ActiveRecord::Migration
 def change
    create_table :categorias do |t|
      t.string :categoria_nombre
      t.timestamps
    end
    rename_column(:libros, :categoria, :categoria_id)
  end
end
