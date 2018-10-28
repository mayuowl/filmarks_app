# == Schema Information
#
# Table name: movies
#
#  id         :bigint(8)        not null, primary key
#  title      :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Movie < ApplicationRecord
  validates :title, presence: true
  has_many :user_movie_marks, dependent: :destroy
  has_many :users, through: :user_movie_marks
  has_many :movie_directors, dependent: :destroy
  has_many :casts, through: :movie_directors
  has_many :movie_actors, dependent: :destroy
  has_many :casts, through: :movie_actors
end
