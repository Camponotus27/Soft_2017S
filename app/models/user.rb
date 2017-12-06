class User < ActiveRecord::Base

  has_many :horarios

  validates :rut, :rut => {:message => "no valido"}, allow_blank: true
  validates :rut, :presence => {:message => "no puede estar vacio"}

  validates :rut,  :uniqueness => {:message => "ya regitrado"}, allow_blank: true

  validates :nombre, :apellido_materno, :apellido_paterno, :presence => {:message => "no puede estar vacio"}
  validates :nombre, :apellido_materno, :apellido_paterno, length: { maximum: 50 , :message => "muy largo, tiene que ser menor a 50 caracteres"}
  validates :nombre, :apellido_materno, :apellido_paterno, length: { minimum: 4 , :message => "muy corto, tiene que ser mas de 4 caracteres"}
  validates :nombre, :apellido_materno, :apellido_paterno,  format: { with: /\A[a-zA-Z]+\z/,  message: "solo permite letras"} ,allow_blank: true


  validates :email,  :uniqueness => {:message => "ya regitrado"},allow_blank: true
  validates :email, length: { maximum: 100 , :message => "muy largo no puede tener mas de 100 caracteres"}
  validates :email, length: { minimum: 4 , :message => "muy corto, tiene que ser mas de 4 caracteres"}

  validates :numero_contacto, :presence => {:message => "no puede estar vacio"}
  validates :numero_contacto,  :uniqueness => {:message => "ya regitrado"}, allow_blank: true
  validates :numero_contacto, length: { is: 9,  :message => " debe ser de 9 digitos"}, allow_blank: true
  validates :numero_contacto, numericality: { only_integer: true , :message => "solo numeros"}, allow_blank: true

  validates :password, length: { maximum: 50 , :message => "muy largo, tiene que ser menor a 50 caracteres"}

  before_validation :set_status_because_rails_cannot, on: :create

      def set_status_because_rails_cannot
        self.permiso ||= 'cliente'
      end




  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable




def update_with_password(params, *options)
    current_password = params.delete(:current_password)

    if params[:password].blank?
      params.delete(:password)
      params.delete(:password_confirmation) if params[:password_confirmation].blank?
    end

    result = if params[:password].blank? || valid_password?(current_password)
      update_attributes(params, *options)
    else
      self.assign_attributes(params, *options)
      self.valid?
      self.errors.add(:current_password, current_password.blank? ? :blank : :invalid)
      false
    end

    clean_up_passwords
    result
end






#relaciones

  has_many :usercomunas , :dependent => :destroy
  has_many :comunas, through:  :usercomunas


  has_many :userprofesions , :dependent => :destroy
  has_many :profesions, through:  :userprofesions

end
