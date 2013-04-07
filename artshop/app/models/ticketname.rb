# == Schema Information
#
# Table name: ticketnames
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  discount   :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Ticketname < ActiveRecord::Base
  attr_accessible :discount, :name
  has_many :ticket
end
