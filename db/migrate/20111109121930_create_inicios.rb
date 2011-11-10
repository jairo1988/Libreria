class CreateInicios < ActiveRecord::Migration
  def change
    create_table :inicios do |t|
      t.string :novedades
      t.string :bestsellers

      t.timestamps
    end
  end
end
