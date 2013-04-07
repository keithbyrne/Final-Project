class Order < ActiveRecord::Base
  belongs_to :user
  # has_    :through => :m
  attr_accessible :order_date, :user_id, :movie
  
    has_many :orderitems
end
