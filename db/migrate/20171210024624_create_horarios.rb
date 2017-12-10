class CreateHorarios < ActiveRecord::Migration[5.1]
  def change
    create_table :horarios do |t|
      t.string :profesional
      t.string :zona
      t.datetime :fecha
      t.boolean :disponibilidad
      t.string :cliente
      t.string :apellido
      t.string :direccion_de_atencion
      t.string :descripcion

      t.timestamps
    end
  end
end
