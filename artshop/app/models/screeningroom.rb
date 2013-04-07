# == Schema Information
#
# Table name: screeningrooms
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  capacity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Screeningroom < ActiveRecord::Base
  belongs_to :screeninginfo
  has_many :ticket, :through => :screeninginfo
  attr_accessible :capacity, :name
end
