class CreateHorarios < ActiveRecord::Migration[5.1]
  def change
    create_table :horarios do |t|
      t.string :comuna
      t.datetime :hora
      t.text :comentario

      t.timestamps
    end
  end
end
