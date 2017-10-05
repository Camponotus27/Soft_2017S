class CreateHours < ActiveRecord::Migration[5.1]
  def change
    create_table :hours do |t|
      t.string :identificador
      t.string :tiempo_ini
      t.string :tiempo_ter

      t.timestamps
    end
  end
end
