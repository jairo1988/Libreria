class CreateContactos < ActiveRecord::Migration
  def change
    create_table :contactos do |t|
      t.string :nombre
      t.string :apellido
      t.string :direccion
      t.integer :codigo
      t.string :poblacion
      t.string :provincia
      t.string :email
      t.integer :telefono
      t.string :comentario

      t.timestamps
    end
  end
end
