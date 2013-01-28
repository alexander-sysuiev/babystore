# encoding: utf-8
[:category, :item, :admin, :setting_name, :goods_order, :order].each do |table|
  table.to_s.camelize.constantize.send(:delete_all)
end

# Picture.all.each(&:destroy)

admin = Admin.create(:first_name => 'Store',
                     :last_name => 'Admin',
                     :email => 'admin@webstore.com',
                     :password => 'epyfnm',
                     :password_confirmation => 'epyfnm')

[:weight, :height, :capacity, :waid].each do |name|
  SettingName.create :name => name
end

toys = Category.create(:name => 'Игрушки')
clothes = Category.create(:name => 'Одежда')
higiene = Category.create(:name => 'Гигиена')

item_pictures = []
['item1', 'item2', 'item3', 'item4', 'item5', 'item6'].each do |name|
  f = File.open "uploads/item_pictures/#{name}.jpg"
  item_pictures << Image.create(:photo => f)
end

description = <<-EOS
  The direct vent, sealed combustion boiler has an ultra-high 97.3% efficiency and is ENERGY STAR approved!
  The Peerless PUREFIRE PF-110, now available in six sizes, has ASME and ETL certifications for both the
  U.S. and Canada and is the most thoroughly tested high efficiency boiler on the market!
  A unique condensate system with built-in neutralizer component and float switch protection is a top
  feature of the boiler. Features and Benefits of Peerless PUREFIRE PF boiler at a glance:
  Stainless steel heat exchanger.
  The heart of the Peerless PureFire boiler is the ASME-certified stainless steel heat exchanger.
EOS

items = Item.create(
  [
    { :name => 'Детская одежда 2 года мальчик', :price => 100.50, :category_id => toys.id, :image => item_pictures[0], :description => description},
    { :name => 'Детский комбинезон', :price => 13.43, :category_id => toys.id, :image => item_pictures[1], :description => description },
    { :name => 'Детский горшок вонючка', :price => 22.30, :category_id => clothes.id, :image => item_pictures[2], :description => description },
    { :name => 'Машинка для детей от 3 лет', :price => 64.70, :category_id => clothes.id, :image => item_pictures[3], :description => description },
    { :name => 'Башенки', :price => 200, :category_id => higiene.id, :image => item_pictures[4], :description => description },
    { :name => 'Собери машинку', :price => 50, :category_id => higiene.id, :image => item_pictures[5], :description => description }
  ]
)

items.each_with_index do |item, index|
  item.settings.create :setting_name => SettingName.first, :value => index * 10
end
