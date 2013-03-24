class Movie < ActiveRecord::Base
  attr_accessible :actors, :category, :description, :director, :name, :poster, :trailer
  
  has_attached_file :poster
                    # :url  => "/assets/posters/:id/:basename.:extension",
                    #                     :path => ":rails_root/public/assets/posters/:id/:basename.:extension"
  
end
