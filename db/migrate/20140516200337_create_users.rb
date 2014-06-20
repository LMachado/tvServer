class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :mail
      t.string :pass
      t.datetime :bday
      t.string :sex
      t.string :job
      t.string :naturality

      t.timestamps
    end
  end
end
