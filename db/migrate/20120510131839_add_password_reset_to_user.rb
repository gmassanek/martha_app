class AddPasswordResetToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :password_reset, :boolean, :default => :true
  end

  def self.down
    remove_column :users, :password_reset
  end
end
