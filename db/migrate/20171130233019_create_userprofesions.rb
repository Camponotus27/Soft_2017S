class CreateUserprofesions < ActiveRecord::Migration[5.1]
  def change
    create_table :userprofesions do |t|
      t.references :profesion, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
