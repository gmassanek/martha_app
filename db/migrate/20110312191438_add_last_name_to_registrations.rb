class AddLastNameToRegistrations < ActiveRecord::Migration
  def self.up
    add_column :registrations, :last_name, :string
  end

  def self.down
    remove_column :registrations, :last_name
  end
end
