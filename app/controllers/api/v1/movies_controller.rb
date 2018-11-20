class Api::V1::MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render json: { status: 200, data: @movies }
  end

  def show
    @movie = Movie.find(params["id"])
    render json: { status: 200, data: @movie }
  end
end
