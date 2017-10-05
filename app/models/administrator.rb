class Administrator < ApplicationRecord
	validates :rut, presence: true;
	validates :nombre, presence: true;
	validates :numero_contacto, presence: true;
	validates :correo, presence: true;
	validates :direccion, presence: true;
end
