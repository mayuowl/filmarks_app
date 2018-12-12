class Api::V1::MovieDirectors < ApplicationController
  def index
    @director = MovieDirector.all
  end

  def show
    @director = MovieDirector.find(params["id"])
  end
end
