class CambioTipoTarifa < ActiveRecord::Migration[5.1]
   def change
    change_column :servicios, :tarifa, :integer
  end
end
