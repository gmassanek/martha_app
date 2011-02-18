Given /^I am a User named (.*)$/ do |name|
  User.create!(:name => name, :password => "test", :role => "admin", :password_confirmation => "test")
end
