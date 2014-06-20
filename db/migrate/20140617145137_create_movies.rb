class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.time :time
      t.string :age
      t.string :integer
      t.string :foto
      t.string :video
      t.text :description

      t.timestamps
    end
  end
end
