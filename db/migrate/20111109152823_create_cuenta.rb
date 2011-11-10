class CreateCuenta < ActiveRecord::Migration
  def change
    create_table :cuenta do |t|
      t.string :email
      t.string :password
      t.string :password_confirmation
      t.string :nombre
      t.string :apellido
      t.string :nif
      t.string :direccion
      t.string :ciudad
      t.integer :codigo
      t.string :pais
      t.integer :telefono

      t.timestamps
    end
  end
end
