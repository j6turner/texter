class Contact < ActiveRecord::Base
  validates :firstName, :presence => true
  validates :lastName, :presence => true
  validates :phoneNumber, :presence => true

  
end
