class AddBooleanCuenta < ActiveRecord::Migration
  def change
    add_column(:cuentas, :administrador, :boolean)
  end
end
