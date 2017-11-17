class User < ActiveRecord::Base
 #attr_accessible :rut :password, :nombre, :numero_contacto , :email , :permiso , :horario , :comuna , :profesion , :horario_mes 

  validates :rut, :rut => {:message => " rut no valido"}
  validates :rut,  :uniqueness => {:message => "rut ya regitrado"}

  validates :nombre, :presence => {:message => "nombre no puede estar vacio"}


  validates :email, :presence => {:message => "email no puede estar vacio"}
  validates :email,  :uniqueness => {:message => "email ya regitrado"}

  validates :numero_contacto, :presence => {:message => "numero de contacto no puede estar vacio"}
  validates :numero_contacto,  :uniqueness => {:message => "numero de contacto ya regitrado"}
  validates :numero_contacto, length: { is: 9,  :message => "Numero de contacto de 9 digitos"}
  validates :numero_contacto, numericality: { only_integer: true , :message => "no ingrese letras o simbolos solo numeros"}







  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



end
