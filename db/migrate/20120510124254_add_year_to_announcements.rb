class AddYearToAnnouncements < ActiveRecord::Migration
  def self.up
    add_column :announcements, :year, :string
  end

  def self.down
    remove_column :announcements, :year
  end
end
