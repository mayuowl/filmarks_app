class Admin::V1::MoviesController < ApplicationController
  before_action :set_movie, only: [:update, :destroy]

  def create
    @movie = Movie.create!(movie_params)
    render json: { status: 204, data: {} }
  end

  def update
    @movie.update!(movie_params)
    render json: { status: 200, data: @movie }
  end

  def destroy
    @movie.destroy!
    render json: { status: 204, data: {} }
  end

  private

    def movie_params
      params.require(:movie).permit(:title)
    end

    def set_movie
      @movie = Movie.find(params[:id])
    end
end
