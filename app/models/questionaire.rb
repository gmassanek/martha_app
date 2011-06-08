class Questionaire < ActiveRecord::Base
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  attr_accessible :name, :email, :q1, :q2, :q3, :q4, :q5, :q6, :q7, :q8, :q9

  validates :name,
      :length => { :within => 4..40 }
  
  validates :email,
      :format => {:with => email_regex}, :if => :email?

end

