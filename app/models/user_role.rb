# == Schema Information
# Schema version: 20110215173604
#
# Table name: user_roles
#
#  id         :integer         not null, primary key
#  user_id    :integer
#  role_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class UserRole < ActiveRecord::Base
  belongs_to :user
  belongs_to :role

  validates :user_id, :presence => true
  validates :role_id, :presence => true
  
end
