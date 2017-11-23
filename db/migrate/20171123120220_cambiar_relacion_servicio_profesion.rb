class CambiarRelacionServicioProfesion < ActiveRecord::Migration[5.1]
  def change
  	drop_table :has_servicio_profesions

  	remove_column :profesions , :servicio

  	add_column :profesions, :servicio_id, :integer

    add_foreign_key :profesions, :servicios , column: :servicio_id, primary_key: :id


  end
end
