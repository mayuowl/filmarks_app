class CreateUserReviewLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :user_review_likes do |t|
      t.references :user
      t.references :review
      t.timestamps
    end
  end
end
