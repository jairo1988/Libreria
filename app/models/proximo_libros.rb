class ProximoLibros < ActiveRecord::Base
 attr_accessible :titulo,:autor,:editorial,:categoria,:anyo,:paginas,:precio,:descripcion,:photo
 has_many :reserva
 #paperclip
  has_attached_file :photo, :styles => { :thumb => "50x50", :small => "50x50"}
  validates_attachment_size :photo, :less_than => 2.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg','image/png','image/jpg']
end
