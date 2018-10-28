class MovieDirector < ApplicationRecord
  belongs_to :movie
  belongs_to :cast
end
