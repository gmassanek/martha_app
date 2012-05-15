class Contact < ActiveRecord::Base
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  attr_accessible :name, :email, :message, :year
  validates :email,
      :presence => true,
      :format => {:with => email_regex}
  validates :name, :presence => true
  validates :message, :presence => true
end
