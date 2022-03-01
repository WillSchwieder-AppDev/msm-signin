class AddDurationToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :duration, :integer
  end
end
