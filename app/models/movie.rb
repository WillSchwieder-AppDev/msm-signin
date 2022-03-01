class Movie < ApplicationRecord

  has_many(:roles, { :class_name => "Role", :foreign_key => "movie_id", :dependent => :destroy })

  belongs_to(:director, { :required => true, :class_name => "Director", :foreign_key => "director_id" })

  has_many(:actors, { :through => :roles, :source => :actor })

  rails generate draft:resource director name:string dob:date

  
end
