class CreateGoodsOrders < ActiveRecord::Migration
  def change
    create_table :goods_orders do |t|
      t.integer  :order_id, :null => false
      t.integer  :good_id, :null => false
      t.string   :type, :null => false
      t.decimal  :price, :precision => 10, :scale => 2
      t.integer  :quantity
      t.timestamps
    end
  end
end
