# == Schema Information
#
# Table name: movies
#
#  id                   :integer          not null, primary key
#  name                 :string(255)
#  director             :string(255)
#  actors               :string(255)
#  category             :string(255)
#  description          :text
#  poster               :string(255)
#  trailer              :string(255)
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  trailer_file_name    :string(255)
#  trailer_content_type :string(255)
#  trailer_file_size    :integer
#  trailer_updated_at   :datetime
#  poster_file_name     :string(255)
#  poster_content_type  :string(255)
#  poster_file_size     :integer
#

class Movie < ActiveRecord::Base
  attr_accessible :actors, :category, :description, :director, :name, :poster, :trailer
  has_many :ticket, :through => :screeninginfo
  has_many :screeninginfos
  belongs_to :orderitem
  has_attached_file :poster
                    # :url  => "/assets/posters/:id/:basename.:extension",
                    #                     :path => ":rails_root/public/assets/posters/:id/:basename.:extension"
  
end
