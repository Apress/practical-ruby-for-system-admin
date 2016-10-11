class Host < ActiveRecord::Base 
  has_many :disks 
end 

class Disk < ActiveRecord::Base 
  belongs_to :host 
  has_many :reports 
end 

class Report < ActiveRecord::Base 
  belongs_to :disk 
end 
