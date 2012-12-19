class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string   :name
      t.decimal  :price,  :precision => 10, :scale => 2
      t.integer  :category_id
      t.integer  :image_id
      t.text     :description
      t.timestamps
    end
  end

end
