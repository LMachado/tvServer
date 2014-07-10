class AddAttachmentFotoToMovies < ActiveRecord::Migration
  def self.up
    change_table :movies do |t|
      t.attachment :foto
    end
  end

  def self.down
    drop_attached_file :movies, :foto
  end
end
