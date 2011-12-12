class CambiarBooleano < ActiveRecord::Migration
  def change
    rename_column(:compras,:pendiente_comprar, :comprado)
  end
end
