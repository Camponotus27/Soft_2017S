class CreateHorarioSemanas < ActiveRecord::Migration[5.1]
  def change
    create_table :horario_semanas do |t|
      t.string :nombre
      t.date :fecha_inicio
      t.date :fecha_termino
      t.references :lunes_id, foreign_key: true
      t.references :martes_id, foreign_key: true
      t.references :miercoles_id, foreign_key: true
      t.references :jueves_id, foreign_key: true
      t.references :viernes_id, foreign_key: true
      t.references :sabado_id, foreign_key: true
      t.references :domingo_id, foreign_key: true

      t.timestamps
    end
  end
end
