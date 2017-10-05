class CreateComuna < ActiveRecord::Migration[5.1]
  def change
    create_table :comunas do |t|
    	t.string	:nombre
    end
  end
end
