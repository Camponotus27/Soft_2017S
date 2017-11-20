class User < ActiveRecord::Base
 #attr_accessible :rut :password, :nombre, :numero_contacto , :email , :permiso , :horario , :comuna , :profesion , :horario_mes 

  validates :rut, :rut => {:message => "no valido"}, allow_blank: true
  validates :rut, :rut => {:message => "no puede estar vacio"}

  validates :rut,  :uniqueness => {:message => "ya regitrado"}, allow_blank: true

  validates :nombre, :apellido_materno, :apellido_paterno, :presence => {:message => "no puede estar vacio"}
  validates :nombre, :apellido_materno, :apellido_paterno, length: { maximum: 50 , :message => "muy largo, tiene que ser menor a 50 caracteres"}
  validates :nombre, :apellido_materno, :apellido_paterno,  format: { with: /\A[a-zA-Z]+\z/,  message: "solo permite letras"} ,allow_blank: true

 # validates :email, :presence => {:message => "email no puede estar vacio"}
  validates :email,  :uniqueness => {:message => "ya regitrado"},allow_blank: true
  validates :email, length: { maximum: 100 , :message => "muy largo no puede tener mas de 100 caracteres"}


  validates :numero_contacto, :presence => {:message => "no puede estar vacio"}
  validates :numero_contacto,  :uniqueness => {:message => "ya regitrado"}, allow_blank: true
  validates :numero_contacto, length: { is: 9,  :message => " debe ser de 9 digitos"}, allow_blank: true
  validates :numero_contacto, numericality: { only_integer: true , :message => "solo numeros"}, allow_blank: true








  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



end
