class Item < ActiveRecord::Base
 belongs_to :image
 has_many :settings
 belongs_to :category

 validates :name, :presence => true
 validates :price, :presence => true, :numericality => true
 validate :category_id, :presence => true

 PER_PAGE = 4
end
