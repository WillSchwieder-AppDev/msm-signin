# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  dob        :date
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord
  has_many(:movies, { :class_name => "Movie", :foreign_key => "director_id", :dependent => :destroy })
  
end
