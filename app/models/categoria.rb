class Categoria < ActiveRecord::Base
  attr_accessible :categoria_nombre
  has_many :libros


#  def numero_libros
    #libros.count(:conditions => {:categoria_id => self.id})
  #end
end
