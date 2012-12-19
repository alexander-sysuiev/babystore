class Category < ActiveRecord::Base
 has_many :items
 has_many :settings

 scope :items, :conditions => { :kind => :item }

 KINDS = [:item]	

end