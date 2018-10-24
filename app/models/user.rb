class User < ApplicationRecord
  validates :name, presence: true
  validates :account, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  has_many :user_movie_marks, dependent: :delete_all
  has_many :users, through: :user_movie_marks
end
