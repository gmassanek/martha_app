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
  attr_accessible :name, :email

  validates :name,
      :presence => true,
      :length => { :within => 2..40 }
  
end
  