class Project < ActiveRecord::Base
  attr_accessible :name
  has_many :tickets, :dependent => :delete_all  #if project gets deleted, 
  												#this will also delete tickets
  				# other option for above is dependent => :destroy 
  				# and :dependent => :nullify
  validates :name, :presence => true
  
end
