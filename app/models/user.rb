# == Schema Information
#
# Table name: users
#
#  id         :bigint(8)        not null, primary key
#  name       :string(255)      not null
#  account    :string(255)      not null
#  email      :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  validates :name, presence: true
  validates :account, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  has_many :user_movie_marks, dependent: :destroy
  has_many :movies, through: :user_movie_marks
  has_many :user_review_likes, dependent: :destroy
  has_many :reviews, through: :user_review_likes
end
