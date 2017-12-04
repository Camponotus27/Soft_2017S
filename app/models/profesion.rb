class Profesion < ApplicationRecord

	has_many :assignments
	has_many :servicios, through:  :assignments

	has_many :userprofesions
    has_many :users, through:  :userprofesions
	

	after_create :save_servicios
	after_update :save_servicios


	def servicios= (value)

		@servicios = value
		
	end

	private

	def save_servicios
		@servicios.each do |servicio_id|
			assignments.create(servicio_id: servicio_id , profesion_id: self.id )
		end
	end

end 
