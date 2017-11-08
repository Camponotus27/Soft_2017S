class CreateRegistros < ActiveRecord::Migration[5.1]
  def change
    create_table :registros do |t|
      t.integer :codigo
      t.datetime :fecha
      t.string :Profesional
      t.string :cliente
      t.string :comuna_atencion
      t.string :servicio
      t.string :horario_dia

      t.timestamps
    end
  end
end
