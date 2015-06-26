class Meeting < ActiveRecord::Base

  validates :cost, :time, :identifier, :people, :worth, :presence => true
  validates :identifier, :uniqueness => true
  

end
