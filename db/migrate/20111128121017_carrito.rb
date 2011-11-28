class Carrito < ActiveRecord::Migration
  def change
    create_table :carrito do |t|
    t.integer :libro_id
    t.integer :cuenta_id
    t.integer :cantidad
    t.boolean :pendiente_comprar
  end
  end
end
