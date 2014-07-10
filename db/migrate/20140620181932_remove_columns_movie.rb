class RemoveColumnsMovie < ActiveRecord::Migration
  def change
	  remove_column :movies, :foto
  end
end
