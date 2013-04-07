class Ticket < ActiveRecord::Base
  attr_accessible :price, :screeninginfo_id, :tickettype_id, :user_id
end
