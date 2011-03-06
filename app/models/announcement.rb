# == Schema Information
# Schema version: 20110305170244
#
# Table name: announcements
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  memo       :string(255)
#  text       :text
#  user_id    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Announcement < ActiveRecord::Base

  attr_accessible :title, :memo, :text, :user_id
  validates :title, :presence => true
  validates :text, :presence => true
end

