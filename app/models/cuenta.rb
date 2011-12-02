class Cuenta < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation, :administrador, :nombre, :apellido, :nif, :direccion, :ciudad, :codigo, :telefono, :provincia
  has_many :reservas
  has_many :compras

  attr_accessor :password
  before_save :encrypt_password
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create


 def self.authenticate(email, password)
    cuenta = find_by_email(email)
    if cuenta && cuenta.password_hash == BCrypt::Engine.hash_secret(password, cuenta.password_salt)
      cuenta
    else
      nil
    end
  end
  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end

  #validates :nombre, :presence => true, :on => :update
  #validates :apellido, :presence => true, :on => :update
  #validates :nif, :presence => true, :on => :update
  #validates :direccion, :presence =>true, :on => :update
  #validates :ciudad, :presence => true, :on => :update
  #validates :codigo, :presence => true, :on => :update
  #validates :telefono, :presence => true, :on => :update
  #validates :provincia, :presence => true, :on => :update
end
