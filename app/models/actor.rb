# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Actor < ApplicationRecord

  has_many(:roles, { :class_name => "Role", :foreign_key => "actor_id", :dependent => :destroy })

  has_many(:movies, { :through => :roles, :source => :movie })


end
