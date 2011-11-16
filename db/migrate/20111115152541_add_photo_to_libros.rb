class AddPhotoToLibros < ActiveRecord::Migration
  def change
    add_column :libros, :photo_file_name, :string
    add_column :libros, :photo_content_type, :string
    add_column :libros, :photo_file_size, :integer
    add_column :libros, :photo_updated_at, :datetime
  end
end
