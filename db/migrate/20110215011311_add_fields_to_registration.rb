class AddFieldsToRegistration < ActiveRecord::Migration
  def self.up
    add_column :registrations, :home_phone, :string
    add_column :registrations, :cell_phone, :string
    add_column :registrations, :address_1, :string
    add_column :registrations, :address_2, :string
    add_column :registrations, :city, :string
    add_column :registrations, :state, :string
    add_column :registrations, :zip, :string
    add_column :registrations, :credentials, :string
  end

  def self.down
    remove_column :registrations, :credentials
    remove_column :registrations, :zip
    remove_column :registrations, :state
    remove_column :registrations, :city
    remove_column :registrations, :address_2
    remove_column :registrations, :address_1
    remove_column :registrations, :cell_phone
    remove_column :registrations, :home_phone
  end
end
