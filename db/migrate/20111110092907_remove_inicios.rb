class RemoveInicios < ActiveRecord::Migration
  def change
    drop_table(:inicios)
  end
end
