class CreateComunas < ActiveRecord::Migration[5.1]
  def change
  	drop_table :comunas
  	
    create_table :comunas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
