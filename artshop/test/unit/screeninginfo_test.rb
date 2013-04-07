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

require 'test_helper'

class ScreeninginfoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
