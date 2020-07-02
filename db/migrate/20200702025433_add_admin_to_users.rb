class AddAdminToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :fb_users, :admin, :boolean, default: false
  end
end
