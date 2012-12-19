class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string   :first_name
      t.string   :last_name
      t.string   :email, :default => "", :null => false
      t.boolean  :admin
      t.string   :encrypted_password, :limit => 128, :default => "", :null => false
      t.datetime :remember_created_at
      t.integer  :sign_in_count, :default => 0
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip
      t.timestamps
    end
  end
end
