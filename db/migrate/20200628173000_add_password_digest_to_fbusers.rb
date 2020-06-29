class AddPasswordDigestToFbusers < ActiveRecord::Migration[6.0]
  def change
    add_column :fb_users, :password_digest, :string
  end
end
