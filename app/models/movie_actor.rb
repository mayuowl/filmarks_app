# == Schema Information
#
# Table name: movie_actors
#
#  id         :bigint(8)        not null, primary key
#  movie_id   :bigint(8)
#  cast_id    :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class MovieActor < ApplicationRecord
  belongs_to :movie
  belongs_to :cast
end
