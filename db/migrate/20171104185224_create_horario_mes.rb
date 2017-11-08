class CreateHorarioMes < ActiveRecord::Migration[5.1]
  def change
    create_table :horario_mes do |t|
      t.integer :horario
      t.string :descripcion

      t.timestamps
    end
  end
end
