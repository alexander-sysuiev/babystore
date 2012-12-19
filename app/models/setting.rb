class Setting < ActiveRecord::Base
  belongs_to :item
  belongs_to :category
  belongs_to :setting_name
  delegate :name, :to => :setting_name

  scope :for_category, lambda{ |c| {:conditions => ['settings.category_id = ?', c.id]} }
  scope :for_item, lambda{ |item| {:conditions => ['settings.item_id = ? OR settings.category_id = ?', item.id, item.category_id]} }
end