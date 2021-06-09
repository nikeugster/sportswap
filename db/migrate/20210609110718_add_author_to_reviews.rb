class AddAuthorToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :author_id, :integer
  end
end
