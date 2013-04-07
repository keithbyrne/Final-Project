# == Schema Information
#
# Table name: tickettypes
#
#  id         :integer          not null, primary key
#  type       :string(255)
#  discount   :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tickettype < ActiveRecord::Base
  attr_accessible :discount, :name
  
 # belongs_to :ticket
  
end
