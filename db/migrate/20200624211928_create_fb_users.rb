class CreateFbUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :fb_users do |t|
      t.string :link
      t.string :name
      t.string :phone

      t.timestamps
    end
  end
end
