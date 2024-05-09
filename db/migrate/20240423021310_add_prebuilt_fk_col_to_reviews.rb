class AddPrebuiltFkColToReviews < ActiveRecord::Migration[7.0]
  def change
    add_reference :reviews, :prebuilt, foreign_key: true
  end
end
