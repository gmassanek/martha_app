class User < ActiveRecord::Base

  validates :password,  :presence => true,
                        :confirmation => true,
                        :length => {:within => 6..10},
                        :if => :password_required?

  validates :password_confirmation,
            :presence => true,
            :if => :password_required?

  validates :role, :presence => true
  validates :name, :presence => true,
                    :length => {:within => 4..40},
                    :uniqueness => {:case_sensitive => false}
  validate :valid_role

  attr_accessor :password
  attr_protected :id, :salt
  attr_accessible :name, :password, :password_confirmation, :role, :password_reset

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

  def self.authenticate(name, pass)
    u=find(:first, :conditions=>["name = ?", name])
    return nil if u.nil?
    return u if u.valid_password?(pass)
    nil
  end

  def valid_password?(submitted_password)
    encrypted_password == encrypt(salt, submitted_password)
  end

  private
  def password_required?
    !persisted? || !password.nil? || !password_confirmation.nil?
  end
  def save_encrypt_password
    self.salt = make_salt if salt.nil?
    self.encrypted_password = encrypt(salt, password)
  end
  def encrypt(string1, string2)
    secure_hash("#{string1}--#{string2}")
  end
  def make_salt
    secure_hash("#{Time.now.utc}--#{password}")
  end

  def secure_hash(string)
    Digest::SHA2.hexdigest(string)
  end


end

