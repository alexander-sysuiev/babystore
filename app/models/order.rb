class Order < ActiveRecord::Base
  has_many :item_orders
  has_many :items, :through => :item_orders
  belongs_to :address_id

  after_create :generate_serial

  validates_presence_of :phone, :name
  validates_numericality_of :phone
  validates_format_of :email,
                      :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/,
                      :allow_blank => true

private

  def generate_serial
    serial = "#{created_at.to_i.to_s[0..4]}-#{created_at.to_i.to_s[5..9]}#{self.id.to_s}"
    self.update_attributes! :order_number => serial
  end
end