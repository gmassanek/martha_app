# == Schema Information
# Schema version: 20110213034324
#
# Table name: registrations
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Registration < ActiveRecord::Base
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  attr_accessible :name, :email

  validates :name,
      :presence => true,
      :length => { :within => 4..40 }
  validates :email,
      :presence => true,
      :format => {:with => email_regex}
end
  