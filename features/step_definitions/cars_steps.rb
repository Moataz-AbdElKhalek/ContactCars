Given /^the following cars exist:$/ do |table|
  table.hashes.each do |car|
	user = User.find_by_Name(car[:Owner].gsub(/\W+/,""))
	user.cars.create!(car)
  end
end

Given /^the following users exist:$/ do |table|
  table.hashes.each do |user|
	User.create!(user)
  end
end

Given /^I signed in as "([^"]*)"$/ do |user_name|
  user = User.find_by_Name(user_name)
  And %[I follow "Login"]
  And %[I fill in "Name" with "#{user.Name}"]
  And %[I fill in "Password" with "#{user.Password}"]
  And %[I press "Logon"]
end

When /^I delete user "([^"]*)"$/ do |user_name|
  user = User.find_by_Name(user_name)
  user.cars.destroy(1)
end
