class Libro < ActiveRecord::Base
  attr_accessible :titulo,:autor,:editorial,:anyo,:paginas,:precio,:descripcion,:photo,:proximolibro,:stock,:categoria_id, :categoria_nombre, :fecha_disponible
  belongs_to :categoria
  has_many :reservas
  has_many :compras

  #define_index do
    #indexes content
    #indexes :titulo, sortable: true
    #indexes descripcion.content, as: :descripcion
    #indexes [libro.titulo, libro.autor], as: :libro
  #end


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
