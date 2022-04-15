class MoviesController < ApplicationController
  before_action :set_movie
  def index
    @movies = Movie.all
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :overview, :poster_url, :rating)
  end
end
