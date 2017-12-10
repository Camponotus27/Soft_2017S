class Horario < ApplicationRecord

  validates :fecha, date: { after: Proc.new { Time.now }}

  validates :fecha, uniqueness: { scope: :profesional,  message: "horario ya ingresado" }

end
