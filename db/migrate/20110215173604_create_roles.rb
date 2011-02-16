class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table :roles do |t|
      t.string :name
      t.text :description
      t.timestamps
    end
    
    create_table :user_roles do |t|
      t.integer :user_id
      t.integer :role_id
      t.timestamps
    end
    
    add_index :roles, :name
    Role.create(:name => "Admin", :description => "Admin User Role")
  end

  def self.down
    drop_table :roles
  end
end