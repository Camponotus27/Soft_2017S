class CreateProfesions < ActiveRecord::Migration[5.1]
  def change
    create_table :profesions do |t|
      t.string :nombre
      t.string :descripcion
      t.string :servicio

      t.timestamps
    end
  end
end
