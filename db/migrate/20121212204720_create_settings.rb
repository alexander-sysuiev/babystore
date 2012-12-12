class CreateSettings < ActiveRecord::Migration
  def change
  	create_table :orders do |t|
  		t.string   :email
	    t.string   :phone, :null => false
	    t.decimal  :price, :precision => 10, :scale => 2, :null => false
	    t.string   :address
	    t.string   :name, :null => false
	    t.string   :order_number
	    t.boolean  :proceed
	    t.timestamps
  	end
  end
end
