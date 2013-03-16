class Order < ActiveRecord::Base
  belongs_to :user
  attr_accessible :order_date, :user_id
  
    has_many :orderitems
end
