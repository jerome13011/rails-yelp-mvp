class AddChefToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :ratting, :integer
  end
end
