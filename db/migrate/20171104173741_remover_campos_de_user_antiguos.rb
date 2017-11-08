class RemoverCamposDeUserAntiguos < ActiveRecord::Migration[5.1]
  def change
  	remove_column :users, :calle
  end
end
