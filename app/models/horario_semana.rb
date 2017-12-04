class HorarioSemana < ApplicationRecord
	has_many :diahorarios
  	has_many :dia_horario_semanas, through:  :diahorarios
end
