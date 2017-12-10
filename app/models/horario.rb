class Horario < ApplicationRecord

  validates :fecha, date: { after: Proc.new { Time.now }}

  validates :fecha, uniqueness: { scope: :profesional,  message: "horario ya ingresado" }
  validates :profesional, presence: true, :length => { :minimum => 5, message: "horario ya ingresado"}
  validates :direccion_de_atencion, presence: true




end
