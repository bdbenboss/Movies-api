class Api::V1::MoviesController < ApplicationController
  def index
    @movies = Movie.all
    # render json: @movies
  end

  def show
    @movie = Movie.find(params[:id])
    render json: @movie
  end

  def delete
    movie = Movie.find(params[:id])
    movie.delete
  end
end
