class FixColumnNameMovie < ActiveRecord::Migration
  def self.up
    rename_column :movies, :time, :duration
  end
end
