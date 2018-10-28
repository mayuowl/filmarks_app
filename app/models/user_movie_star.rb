# == Schema Information
#
# Table name: user_movie_stars
#
#  id         :bigint(8)        not null, primary key
#  user_id    :bigint(8)
#  movie_id   :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserMovieStar < ApplicationRecord
  belongs_to :user
  belongs_to :movie
end
