class Categoria < ActiveRecord::Base
  attr_accessible :categoria_nombre
  has_many :libro
end
