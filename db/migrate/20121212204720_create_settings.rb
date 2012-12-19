class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string  :value
      t.integer :item_id
      t.integer :category_id
      t.integer :setting_name_id, :null => false
      t.timestamps
    end
  end
end
