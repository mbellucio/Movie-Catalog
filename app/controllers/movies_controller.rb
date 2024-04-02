class MoviesController < ApplicationController
  def index
    @movies = Movie.all()
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(
      :title,
      :release_date,
      :summary,
      :country,
      :duration,
      :director_id,
      :genre_id,
      :image_url,
      :is_released
      )
  end

  def create
    movie = Movie.new(movie_params)
    return render:new unless movie.save
    redirect_to movies_path
  end

  def new
    @movie = Movie.new
  end

  def edit
    @movie = Movie.find(params[:id])
    render 'new'
  end

  def update
    @movie = Movie.find(params[:id])
    return render:new unless @movie.update(movie_params)
    redirect_to movie_path(@movie.id)
  end
end
