class Cuenta < ActiveRecord::Base
  validates :nombre, :presence => true
  validates :apellido, :presence => true
  validates :nif, :presence => true
  validates :direccion, :presence =>true
  validates :ciudad, :presence => true
  validates :codigo, :presence => true
  validates :telefono, :presence => true
  validates :provincia, :presence => true
end
