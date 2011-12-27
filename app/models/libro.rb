class Libro < ActiveRecord::Base
  attr_accessible :titulo,:autor,:editorial,:anyo,:paginas,:precio,:descripcion,:photo,:proximolibro,:stock,:categoria_id, :categoria_nombre, :fecha_disponible, :state
  belongs_to :categoria
  has_many :reservas
  has_many :compras

  validates_presence_of :precio,:titulo,:categoria_nombre,:state

  after_save :actualiza_state



  define_index do #inserto los campos que quiero buscar
    indexes titulo #los campos de la tabla libros, que es con la que estoy trabajando
    indexes autor # es el nombre del campo de la tabla Libro
    indexes descripcion
    indexes editorial
    indexes categoria(:categoria_nombre), :as => :categoria # quiero buscar por categorias, pero categoria no es un campo de Libro, por lo que utilizo la tabla categoria y el campo categoria_nombre

  end


  #def nombre_categoria=(v)

  ## buscar en Categoria por el nombre y si no existe crearla
  #categoria_encontrada =  Categoria.find_by_nombre(v)
  #self.categoria = categoria_encontrada
  #end



  #paperclip
  has_attached_file :photo, :styles => { :thumb => "50x50", :small => "50x50"}
  validates_attachment_size :photo, :less_than => 2.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg','image/png','image/jpg']

  scope :proximos, where(:state => :proximo)
  scope :disponibles, where(:state => :disponible)
  scope :agotados, where(:state => :agotado )
  scope :pendientes, where(:state => :pendiente)

  state_machine :state do

    event :esperar do #cuando el stock llega a 0
      transition :proximo => :pendiente
    end

    event :recibir do
      transition :proximo => :disponible
    end

    event :agotar do
      transition :disponible => :agotado
    end

    event :encargar do
      transition :agotado => :disponible
    end
  end

  #def self.lista_categoria
  #all.map(&:categoria).uniq
  #end

  def categoria_nombre
    categoria.try(:categoria_nombre)
  end
  def categoria_nombre=(nombre)
    self.categoria=Categoria.find_or_create_by_categoria_nombre(nombre) if nombre.present?
  end

  def actualiza_state
    if stock == 0
      self.agotar
    end

  end


end
