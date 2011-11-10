class Rename < ActiveRecord::Migration
  def change
    rename_table(:cuenta,:cuentas)
  end
end
