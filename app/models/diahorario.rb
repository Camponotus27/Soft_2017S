class Diahorario < ApplicationRecord
  belongs_to :horario_semana
  belongs_to :dia_horario_semana
end
