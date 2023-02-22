class AddColumnRatingToRestaurants < ActiveRecord::Migration[7.0]
  def change
    add_column :restaurants, :rating, :integer
  end
end
