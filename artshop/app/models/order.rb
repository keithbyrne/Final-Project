# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  order_date :datetime
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Order < ActiveRecord::Base
  belongs_to :user
  # has_    :through => :m
  attr_accessible :order_date, :user_id, :movie, :ticket
  
    has_many :orderitems
end
