class AddYearToContact < ActiveRecord::Migration
  def self.up
    add_column :contacts, :year, :string
  end

  def self.down
    remove_column :contacts, :year
  end
end
