class CreateDiahorarios < ActiveRecord::Migration[5.1]
  def change
    create_table :diahorarios do |t|
      t.references :horario_semana, foreign_key: true
      t.references :dia_horario_semana, foreign_key: true
      t.string :dia

      t.timestamps
    end
  end
end
