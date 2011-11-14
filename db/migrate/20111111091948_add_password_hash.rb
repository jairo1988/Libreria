class AddPasswordHash < ActiveRecord::Migration
  def change
    add_column(:cuentas, :password_hash, :string)
    add_column(:cuentas, :password_salt, :string)
  end
end
