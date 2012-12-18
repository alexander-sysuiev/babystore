# This file should contain all the record creation needed to seed the database with its default values.
[:category, :item, :admin, :order].each do |table|
	table.to_s.camelize.constantize.send(:delete_all)
end

# Picture.all.each(&:destroy)

admin = Admin.create(:first_name => 'Store',
  				     :last_name => 'Admin',
					 :email => 'admin@webstore.com',
					 :password => 'admin',
					 :password_confirmation => 'admin')

description = <<-EOS
	The direct vent, sealed combustion boiler has an ultra-high 97.3% efficiency and is ENERGY STAR approved!
	The Peerless PUREFIRE PF-110, now available in six sizes, has ASME and ETL certifications for both the
	U.S. and Canada and is the most thoroughly tested high efficiency boiler on the market!
	A unique condensate system with built-in neutralizer component and float switch protection is a top
	feature of the boiler. Features and Benefits of Peerless PUREFIRE PF boiler at a glance:
	Stainless steel heat exchanger.
	The heart of the Peerless PureFire boiler is the ASME-certified stainless steel heat exchanger.
EOS

boilers = Item.create(
	[
		{ :name => 'Playgro Elephant Ride Ons', :price => 100.50},
		{ :name => 'MeeMee DJ Mixer Guitar', :price => 13.43 },
		{ :name => 'Farlin Baby Stroller Pram', :price => 22.30 },
		{ :name => 'Playgro Super Senior Slide', :price => 64.70, :description => description },
		{ :name => 'Sunbaby Batman Car', :price => 200, :description => description },
		{ :name => 'Fisher Price Activity Sound Asst', :price => 50, :description => description }
	]
)
