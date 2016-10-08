class AddCityRefToPosts < ActiveRecord::Migration[5.0]
  def change
    add_reference :posts, :city, index: true, foreign_key: true
  end
end
