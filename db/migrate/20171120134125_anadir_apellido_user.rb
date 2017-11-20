class AnadirApellidoUser < ActiveRecord::Migration[5.1]
	def change
  add_column :users, :apellido_materno, :string
  add_column :users, :apellido_paterno, :string
	end
end
