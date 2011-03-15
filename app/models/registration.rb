# == Schema Information
# Schema version: 20110220190213
#
# Table name: registrations
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  email       :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  home_phone  :string(255)
#  cell_phone  :string(255)
#  address_1   :string(255)
#  address_2   :string(255)
#  city        :string(255)
#  state       :string(255)
#  zip         :string(255)
#  credentials :string(255)
#  paid_date   :datetime
#
#New Fields
# => last_name
# => organization
# => 
#
#
#

class Registration < ActiveRecord::Base
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  attr_accessible :name, :email, :home_phone, :cell_phone, :address_1, :address_2, :city, :state, :zip, :credentials, :paid_date

#this code sanitizes the phone number so that it is only digits before it is saved
before_validation(:on => :create) do
  self.home_phone = home_phone.gsub(/[^0-9]/, "")
  self.cell_phone = cell_phone.gsub(/[^0-9]/, "")
end

  validates :name,
      :presence => true,
      :length => { :within => 4..40 }

  validates :last_name,
      :presence => true,
      :length => { :within => 4..40 }
  
  validates :email,
      :presence => true,
      :format => {:with => email_regex}


  validates :home_phone, :presence => true, :length => { :is => 10 }
  validates :cell_phone, :presence => true, :length => { :is => 10 }
  validates :address_1, :presence => true
  validates :city, :presence => true
  validates :state, :presence => true
  validates :zip, :presence => true
  #validates_as_phone :home_phone, :cell_phone

                
end
  
