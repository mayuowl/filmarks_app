# == Schema Information
#
# Table name: casts
#
#  id         :bigint(8)        not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Cast < ApplicationRecord
  validates :name, presence: true
  has_many :movie_directors, dependent: :destroy
  has_many :movies, through: :movie_directors
  has_many :movie_actors, dependent: :destroy
  has_many :movies, through: :movie_actors
end
