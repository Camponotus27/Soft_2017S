class Servicio < ApplicationRecord
	 has_many :profesions, :through => :assignments
	 has_many :assignments , :dependent => :destroy

	 validates :nombre, :tarifa , :presence => {:message => "no puede estar vacio"}
	 validates :nombre,  length: { in: 4..70 , :message =>  "tiene que ser entre 4 y 70 caracteres"},allow_blank: true
	 validates :tarifa,	numericality: { only_integer: true },allow_blank: true
	 validates :tarifa, inclusion: {in: 1000..1000000, :message => "entre $1000 y $1000000"},allow_blank: true
	 validates :nombre, :uniqueness => {:message => "ya regitrado"}, allow_blank: true
end
