class RenameCarritosCompras < ActiveRecord::Migration
  def change
    rename_table :carritos, :compras
  end
  end
