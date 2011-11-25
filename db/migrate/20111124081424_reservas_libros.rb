class ReservasLibros < ActiveRecord::Migration
  def change
    create_table :reservas do |t|
      t.integer :libro_id
      t.integer :cuenta_id
      t.datetime :fecha_reserva
      t.integer :cantidad
    end
  end
end
