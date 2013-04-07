class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :user_id
      t.decimal :price
      t.integer :screeninginfo_id
      t.integer :tickettype_id

      t.timestamps
    end
  end
end
