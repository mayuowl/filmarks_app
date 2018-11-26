class Admin::V1::MoviesController < ApplicationController
  def create
    @movie = Movie.create!(movie_params)
    render json: { status: 204, data: {} }
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update!(movie_params)
    render json: { status: 200, data: @movie }
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy!
    render json: { status: 204, data: {} }
  end

  private

    def movie_params
      params.require(:movie).permit(:title)
    end
end
