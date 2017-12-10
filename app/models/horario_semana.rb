class HorarioSemana < ApplicationRecord
	has_many :diahorarios , :dependent => :destroy
  	has_many :dia_horario_semanas, through:  :diahorarios




  	
end
