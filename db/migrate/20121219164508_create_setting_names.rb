class CreateSettingNames < ActiveRecord::Migration
  def change
    create_table :setting_names do |t|
      t.string   :name, :null => false
      t.timestamps
    end
  end
end
