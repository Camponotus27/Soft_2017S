class CreateAssignments < ActiveRecord::Migration[5.1]
  def change

    create_table :assignments do |t|
      t.references :profesion, foreign_key: true
      t.references :servicio, foreign_key: true
      t.date :assigned_at

      t.timestamps
    end


  end
end
