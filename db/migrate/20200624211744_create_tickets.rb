class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.date :date
      t.string :type
      t.string :title
      t.string :status

      t.timestamps
    end
  end
end
