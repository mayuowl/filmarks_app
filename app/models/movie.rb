class Movie < ApplicationRecord
  validates :title, presence: true
  has_many :user_movie_marks, dependent: :delete_all
  has_many :users, through: :user_movie_marks
end