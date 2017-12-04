class BorrarHorariomesdia < ActiveRecord::Migration[5.1]
  def change
  	drop_table :horario_dia
  	drop_table :horario_mes
  end
end
