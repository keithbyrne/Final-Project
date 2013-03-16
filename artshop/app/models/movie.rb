class Movie < ActiveRecord::Base
  attr_accessible :actors, :category, :description, :director, :name, :poster, :trailer
end
