class CreateHorarios < ActiveRecord::Migration[5.1]
  def change
    create_table :horarios do |t|
      t.string :comuna
      t.date :fecha
      t.time :hora
      t.boolean :disponible
      t.text :comentario

      t.timestamps
    end
  end
end
