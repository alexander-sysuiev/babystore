class CreateAdmins < ActiveRecord::Migration
  def change
  	create_table :admins do |t|
      t.string		:first_name
      t.string		:last_name
      t.string		:email
      t.string    :encrypted_password
      t.boolean	  :admin
      t.timestamp :created_at
      t.timestamp :updated_at
  	end
  end
end
