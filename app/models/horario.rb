class Horario < ApplicationRecord

  validates :fecha, date: { after: Proc.new { Time.now }}


end
