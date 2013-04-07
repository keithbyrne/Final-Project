# == Schema Information
#
# Table name: screeninginfos
#
#  id               :integer          not null, primary key
#  showtime         :time
#  showdate         :date
#  admissiontime    :time
#  movie_id         :integer
#  screeningroom_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Screeninginfo < ActiveRecord::Base
  attr_accessible :admissiontime, :movie_id, :screeningroom_id, :showdate, :showtime
  belongs_to :ticket
  belongs_to :movie
  belongs_to :screeningroom

  def printtime
  	self.showtime.hour.to_s+":"+self.showtime.min.to_s+" "+self.showdate.to_s
  end

end
