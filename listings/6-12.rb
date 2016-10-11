class AddDiskUsageCache < ActiveRecord::Migration 
  def self.up 
    add_column :disks, :usage, :integer, :default => 0 
    Disk.update_all("usage = 0") 
  end 

  def self.down 
    remove_column :disks, :integer 
  end 
end 
