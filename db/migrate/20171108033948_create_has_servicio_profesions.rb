class CreateHasServicioProfesions < ActiveRecord::Migration[5.1]
  def change
    create_table :has_servicio_profesions do |t|
      t.references :profesion, foreign_key: true
      t.references :servicio, foreign_key: true

      t.timestamps
    end
  end
end
