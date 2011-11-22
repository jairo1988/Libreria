class Libro < ActiveRecord::Base
  attr_accessible :titulo,:autor,:editorial,:categoria,:anyo,:paginas,:precio,:descripcion,:photo,:proximolibro,:stock
  #paperclip
  has_attached_file :photo, :styles => { :thumb => "50x50", :small => "50x50"}
  validates_attachment_size :photo, :less_than => 2.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg','image/png','image/jpg']

  scope :proximos, where(:proximolibro => false)
  scope :disponibles, where(:proximolibro => true)

  def self.lista_categoria
    all.map(&:categoria).uniq
  end
end
