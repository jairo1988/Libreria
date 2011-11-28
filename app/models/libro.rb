class Libro < ActiveRecord::Base
  attr_accessible :titulo,:autor,:editorial,:anyo,:paginas,:precio,:descripcion,:photo,:proximolibro,:stock,:categoria_id, :categoria_nombre
  belongs_to :categoria
  has_many :reservas


  #def nombre_categoria=(v)

    ## buscar en Categoria por el nombre y si no existe crearla
    #categoria_encontrada =  Categoria.find_by_nombre(v)
    #self.categoria = categoria_encontrada
  #end



  #paperclip
  has_attached_file :photo, :styles => { :thumb => "50x50", :small => "50x50"}
  validates_attachment_size :photo, :less_than => 2.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg','image/png','image/jpg']

  scope :proximos, where(:proximolibro => false)
  scope :disponibles, where(:proximolibro => true)

  #def self.lista_categoria
    #all.map(&:categoria).uniq
  #end

  def categoria_nombre
    categoria.try(:categoria_nombre)
  end
  def categoria_nombre=(nombre)
    self.categoria=Categoria.find_or_create_by_categoria_nombre(nombre) if nombre.present?
  end

end
