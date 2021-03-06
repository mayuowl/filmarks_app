# == Schema Information
#
# Table name: reviews
#
#  id         :bigint(8)        not null, primary key
#  user_id    :bigint(8)
#  comment    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Review < ApplicationRecord
  has_many :user_review_likes, dependent: :destroy
  has_many :users, through: :user_review_likes
end
