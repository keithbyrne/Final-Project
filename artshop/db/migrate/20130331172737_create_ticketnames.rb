class CreateTicketnames < ActiveRecord::Migration
  def change
    create_table :ticketnames do |t|
      t.string :name
      t.decimal :discount

      t.timestamps
    end
  end
end
