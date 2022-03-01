class AddImageToActors < ActiveRecord::Migration[6.0]
  def change
    add_column :actors, :image, :string
  end
end
