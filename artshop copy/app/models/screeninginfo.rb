class Screeninginfo < ActiveRecord::Base
  attr_accessible :admissiontime, :movie_id, :screeningroom_id, :showdate, :showtime
end
