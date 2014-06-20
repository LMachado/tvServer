class FixColumnTypeMovies < ActiveRecord::Migration
  def change
  	 rename_column :movies, :intiger, :duration
  	 change_column :movies, :duration, :integer
  end
end
