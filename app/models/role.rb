# == Schema Information
# Schema version: 20110215173604
#
# Table name: roles
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Role < ActiveRecord::Base
  
end
