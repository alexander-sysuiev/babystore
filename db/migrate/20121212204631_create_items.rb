class CreateItems < ActiveRecord::Migration
  def change
  	create_table :items do |t|
  		t.string :name
  		t.integer :image_id
  		t.text :description
  		t.integer :category_id
  		t.decimal :price, :precision => 10, :scale => 2
  		t.timestamps
  	end
  end

end
