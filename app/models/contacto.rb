class Contacto < ActiveRecord::Base
  validates :nombre, :presence => true
  validates :email, :presence => true, :format =>{ :with => /\A[a-zA-Z0-9_.]+@[a-z.]+\z/i,  :message => "The correct email format is name@server.com"}
end
