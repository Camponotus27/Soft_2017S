class Profesion < ApplicationRecord

	has_many :assignments , :dependent => :destroy
	has_many :servicios, through:  :assignments

	has_many :userprofesions , :dependent => :destroy
    has_many :users, through:  :userprofesions
	

    validates :nombre, :descripcion , :presence => {:message => "no puede estar vacio"}
	validates :nombre,  length: { in: 4..70 , :message =>  "tiene que ser entre 4 y 70 caracteres"},allow_blank: true
	validates :descripcion,  length: { in: 0..1000 , :message =>  "tiene que ser entre 4 y 1000 caracteres"},allow_blank: true
	validates :nombre, :uniqueness => {:message => "ya regitrado"}, allow_blank: true


	after_create :save_servicios
	after_update :save_servicios


	def servicios= (value)

		@servicios = value
		
	end

	private

	def save_servicios
		if @servicios!=nil
			@servicios.each do |servicio_id|
					assignments.create(servicio_id: servicio_id , profesion_id: self.id )
				end
		end
				
	end

end 
