class AddProximoslibrosBoolean < ActiveRecord::Migration
  def change
    add_column :libros, :proximolibro, :boolean
  end
end
