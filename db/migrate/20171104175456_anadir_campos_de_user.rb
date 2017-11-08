class AnadirCamposDeUser < ActiveRecord::Migration[5.1]
  def change
  	 add_column :users, :comuna , :string
  	 add_column :users, :profesion , :string
  	 add_column :users, :horario_mes , :string
  end
end
