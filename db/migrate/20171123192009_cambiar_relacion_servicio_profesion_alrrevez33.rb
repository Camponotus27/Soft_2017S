class CambiarRelacionServicioProfesionAlrrevez33 < ActiveRecord::Migration[5.1]
  def change

  	remove_foreign_key :servicios, :profesions

  	remove_column :servicios , :profesion_id


  	add_column :profesions, :servicio_id, :integer

    add_foreign_key :profesions, :servicios , column: :servicio_id, primary_key: :id
  end
end
