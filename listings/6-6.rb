class InitialSchema < ActiveRecord::Migration 
  def self.up 
    create_table :hosts do |t| 
      t.column :name, :string 
    end 

    create_table :disks do |t| 
      t.column :host_id, :integer 
      t.column :dev_name, :string 
      t.column :mnt_point, :string 
      t.column :mb_available, :integer 
    end 

    create_table :reports do |t| 
      t.column :disk_id, :integer 
      t.column :created_at, :datetime 
      t.column :mb_used, :integer 
    end 
  end 
  def self.down 
    drop_table :hosts 
    drop_table :disks 
    drop_table :reports 
  end 
end 
