# == Schema Information
#
# Table name: orderitems
#
#  id          :integer          not null, primary key
#  item_id     :integer
#  title       :string(255)
#  description :text
#  quantity    :integer
#  price       :decimal(, )
#  order_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class OrderitemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
