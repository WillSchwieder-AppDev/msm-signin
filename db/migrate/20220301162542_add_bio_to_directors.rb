class AddBioToDirectors < ActiveRecord::Migration[6.0]
  def change
    add_column :directors, :bio, :string
  end
end
