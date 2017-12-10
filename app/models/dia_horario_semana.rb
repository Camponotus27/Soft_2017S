class DiaHorarioSemana < ApplicationRecord
	has_many :diahorarios , :dependent => :destroy
  	has_many :horario_semanas, through:  :diahorarios
end
