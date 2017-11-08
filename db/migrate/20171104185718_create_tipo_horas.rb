class CreateTipoHoras < ActiveRecord::Migration[5.1]
  def change
    create_table :tipo_horas do |t|
      t.string :descripcion
      t.string :dueno_hora

      t.timestamps
    end
  end
end
