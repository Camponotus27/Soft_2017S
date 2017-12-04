class DesecharTablasYCreatTablaIntermedia < ActiveRecord::Migration[5.1]
  def change


  	remove_reference :horario_semanas, :dia_horario_semana_lunes
  	remove_reference :horario_semanas, :dia_horario_semana_martes
  	remove_reference :horario_semanas, :dia_horario_semana_miercoles
  	remove_reference :horario_semanas, :dia_horario_semana_jueves
  	remove_reference :horario_semanas, :dia_horario_semana_viernes
  	remove_reference :horario_semanas, :dia_horario_semana_sabado
  	remove_reference :horario_semanas, :dia_horario_semana_domingo

  	drop_table :dia_horario_semana_lunes
  	drop_table :dia_horario_semana_martes
  	drop_table :dia_horario_semana_miercoles
  	drop_table :dia_horario_semana_jueves
  	drop_table :dia_horario_semana_viernes
  	drop_table :dia_horario_semana_sabados
  	drop_table :dia_horario_semana_domingos

  	remove_column :assignments, :assigned_at
  end
end
