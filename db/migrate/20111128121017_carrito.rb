class Carrito < ActiveRecord::Migration
  def change
    create_table :carritos do |t|
    t.integer :libro_id
    t.integer :cuenta_id
    t.integer :cantidad
    t.integer :fecha_compra
    t.integer :precio_total
    t.boolean :pendiente_comprar
  end
  end
end
