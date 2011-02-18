class DropRole < ActiveRecord::Migration
  def self.up
      drop_table :roles
      drop_table :user_roles
  end

  def self.down
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
end
