# == Schema Information
#
# Table name: roles
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Role < ApplicationRecord

  belongs_to(:movie, { :required => true, :class_name => "Movie", :foreign_key => "movie_id" })

  belongs_to(:actor, { :required => true, :class_name => "Actor", :foreign_key => "actor_id" })
end
