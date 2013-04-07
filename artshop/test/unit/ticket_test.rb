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

require 'test_helper'

class TicketTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
