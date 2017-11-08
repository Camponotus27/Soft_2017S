class BorrarTablasSobrantes < ActiveRecord::Migration[5.1]
  def change
  	drop_table :hours
  	drop_table :schedules
  	drop_table :busy_times
  end
end
