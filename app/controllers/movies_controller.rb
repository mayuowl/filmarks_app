class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render json: {status: 200,data: @movies}
  end
  def show
    @movies = Movie.find_by(movie_id: @movies.id)
    render json: {status: 200,data: @movies}
  end
end