# == Schema Information
#
# Table name: tickets
#
#  id               :integer          not null, primary key
#  user_id          :integer
#  price            :decimal(, )
#  screeninginfo_id :integer
#  tickettype_id    :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Ticket < ActiveRecord::Base
  attr_accessible :price, :screeninginfo_id, :ticketname_id, :user_id,:ticketname
  belongs_to :user
  belongs_to :ticketname
  belongs_to :screeninginfo
  
  default_scope :order => 'tickets.created_at DESC'

end
