class CreateDiaHorarioSemanaMartes < ActiveRecord::Migration[5.1]
  def change
    create_table :dia_horario_semana_martes do |t|
      t.integer :hora8
      t.integer :hora9
      t.integer :hora10
      t.integer :hora11
      t.integer :hora12
      t.integer :hora13
      t.integer :hora14
      t.integer :hora15
      t.integer :hora16
      t.integer :hora17
      t.integer :hora18
      t.integer :hora19
      t.integer :hora20
      t.integer :hora21
      t.integer :hora22
      t.integer :hora23

      t.timestamps
    end
  end
end
