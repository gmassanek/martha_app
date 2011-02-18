# == Schema Information
# Schema version: 20110218001813
#
# Table name: users
#
#  id                 :integer         not null, primary key
#  name               :string(255)
#  salt               :text
#  created_at         :datetime
#  updated_at         :datetime
#  encrypted_password :string(255)
#  role               :string(255)
#

class User < ActiveRecord::Base
  
  validates :password,  :presence => true,
                        :confirmation => true,
                        :length => {:within => 6..10},
                        :if => :password_required?

  validates :password_confirmation,
            :presence => true,
            :if => :password_required?

  validates :role, :presence => true
  validate :valid_role
                   

  attr_accessor :password
  attr_accessible :name, :password, :password_confirmation, :role
  
  before_save :save_encrypt_password
  
  Roles = %w{admin speaker attendee}
  
  Roles.each do |r|
    define_method ":#{r}?" do
      self.role == r
    end
  end

  def valid_role
    errors.add_to_base("Must be a valid role") unless Roles.include?(role)
  end
  
  def valid_password?(submitted_password)
    encrypted_password == encrypt_with_salt(submitted_password)
  end

  private
  def password_required?
    !persisted? || !password.nil? || !password_confirmation.nil?
  end
  def save_encrypt_password
    self.salt = make_salt if salt.nil?
    self.encrypted_password = encrypt_with_salt(password)
  end
  def encrypt_with_salt(string)
    secure_hash("#{string}--#{password}")
  end
  def make_salt
    secure_hash("#{Time.now.utc}--#{password}")
  end

  def secure_hash(string)
    Digest::SHA2.hexdigest(string)
  end
  
  
end

