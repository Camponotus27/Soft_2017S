class CreateUsercomunas < ActiveRecord::Migration[5.1]
  def change
    create_table :usercomunas do |t|
      t.references :comuna, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
