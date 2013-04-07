class AddTicketNameIdToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :ticketname_id, :integer
  end
end
