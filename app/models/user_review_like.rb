# == Schema Information
#
# Table name: user_review_likes
#
#  id         :bigint(8)        not null, primary key
#  user_id    :bigint(8)
#  review_id  :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserReviewLike < ApplicationRecord
  belongs_to :review
  belongs_to :user
end
