class CreateLibros < ActiveRecord::Migration
  def change
    create_table :libros do |t|
      t.string :autor
      t.string :editorial
      t.string :categoria
      t.string :anyo
      t.integer :paginas
      t.decimal :precio
      t.string :descripcion

      t.timestamps
    end
  end
end
