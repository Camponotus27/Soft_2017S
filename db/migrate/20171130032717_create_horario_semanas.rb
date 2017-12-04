class CreateHorarioSemanas < ActiveRecord::Migration[5.1]
  def change
    create_table :horario_semanas do |t|
      t.date :fecha_ini
      t.date :fecha_ter
      t.references :dia_horario_semana_lunes, foreign_key: true
      t.references :dia_horario_semana_martes, foreign_key: true
      t.references :dia_horario_semana_miercoles, foreign_key: true
      t.references :dia_horario_semana_jueves, foreign_key: true
      t.references :dia_horario_semana_viernes, foreign_key: true
      t.references :dia_horario_semana_sabado, foreign_key: true
      t.references :dia_horario_semana_domingo, foreign_key: true

      t.timestamps
    end
  end
end
