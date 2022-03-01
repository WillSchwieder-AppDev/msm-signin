# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  title       :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord
  has_many(:roles, { :class_name => "Role", :foreign_key => "movie_id", :dependent => :destroy })

  has_many(:bookmarks, { :class_name => "Bookmark", :foreign_key => "movie_id", :dependent => :destroy })

  belongs_to(:director, { :required => true, :class_name => "Director", :foreign_key => "director_id" })

  has_many(:actors, { :through => :roles, :source => :actor })
end
