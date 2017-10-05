class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.integer :numero
      t.string :rut_esp
      t.string :hora

      t.timestamps
    end
  end
end
