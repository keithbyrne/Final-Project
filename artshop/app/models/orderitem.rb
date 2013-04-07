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

class Orderitem < ActiveRecord::Base
  belongs_to :order
  has_many :movie
  attr_accessible :description, :item_id, :price, :quantity, :title
end
