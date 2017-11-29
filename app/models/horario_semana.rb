class HorarioSemana < ApplicationRecord
  belongs_to :lunes_id
  belongs_to :martes_id
  belongs_to :miercoles_id
  belongs_to :jueves_id
  belongs_to :viernes_id
  belongs_to :sabado_id
  belongs_to :domingo_id
end
