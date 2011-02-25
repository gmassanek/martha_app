Given /^I am a User named (.*)$/ do |name|
  User.create!(:name => name, :password => "tester", :role => "admin", :password_confirmation => "tester")
end
