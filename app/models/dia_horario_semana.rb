class DiaHorarioSemana < ApplicationRecord
	has_many :diahorarios
  	has_many :horario_semanas, through:  :diahorarios
end
