# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = [{:Name => 'Yahia', :Password => '123', :Phone => '0123456789'},
	{:Name => 'Twkeel', :Password => '123', :Phone => '0123456789'},
	{:Name => 'Moataz', :Password => '123', :Phone => '0123456789'},
	{:Name => 'Bata', :Password => '123', :Phone => '0123456789'},
	{:Name => 'Mahmoud', :Password => '123', :Phone => '0123456789'}
	]

cars  = [{:Brand => 'Fiat',:Model => 'Panda', :Year => '25-Nov-2012', :Engine => '1242 cc', :Price => 120000, :status => 'new', :Owner => 'Twkeel'},
	 {:Brand => 'Fiat',:Model => 'Panda', :Year => '25-Nov-2012', :Engine => '1500 cc', :Price => 130000, :status => 'new', :Owner => 'Twkeel'},
         {:Brand => 'Fiat',:Model => 'Panda', :Year => '25-Nov-2010', :Engine => '1242 cc', :Price => 90000, :status => 'old', :Owner => 'Moataz'},
         {:Brand => 'Mercedes',:Model => 'Benz', :Year => '25-Nov-2010', :Engine => '2600 cc', :Price => 220000, :status => 'old', :Owner => 'Yahia'},
         {:Brand => 'Mercedes',:Model => 'Benz', :Year => '25-Nov-2012', :Engine => '2600 cc', :Price => 320000, :status => 'new', :Owner => 'Twkeel'},
         {:Brand => 'BMW',:Model => 'E39', :Year => '25-Nov-1997', :Engine => '1600 cc', :Price => 70000, :status => 'old', :Owner => 'Mahmoud'},
         {:Brand => 'BMW',:Model => 'E39', :Year => '25-Nov-2000', :Engine => '1600 cc', :Price => 90000, :status => 'old', :Owner => 'Bata'}
         ]


#users.each do |user|
#  User.create!(user)
#end

cars.each do |car|
	u = User.find_by_Name(car[:Owner])
	u.cars.build(car)
end
