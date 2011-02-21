class AddPaidToRegistrations < ActiveRecord::Migration
  def self.up
    add_column :registrations, :paid_date, :datetime
  end

  def self.down
    remove_column :registrations, :paid_datenno
  end
end
