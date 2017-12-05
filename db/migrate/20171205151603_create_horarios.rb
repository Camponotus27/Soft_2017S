class CreateHorarios < ActiveRecord::Migration[5.1]
  def change
    create_table :horarios do |t|
      t.string :profesional
      t.string :zona
      t.date :fecha
      t.string :hora
      t.boolean :disponibilidad
      t.string :descripcion

      t.timestamps
    end
  end
end
