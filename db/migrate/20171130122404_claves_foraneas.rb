class ClavesForaneas < ActiveRecord::Migration[5.1]
  def change
  	add_reference :comunas, :users , foreign_key: true
  	add_reference :profesions, :users , foreign_key: true
  	add_reference :horario_semanas, :users , foreign_key: true
  end
end
