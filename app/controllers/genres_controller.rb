class GenresController < ApplicationController
  def index
    @genres = Genre.all()
  end

  def show
    @genre = Genre.find(params[:id])
    @movies = @genre.movies
  end

  def genre_params
    params.require(:genre).permit(:name)
  end

  def create
    genre = Genre.new(genre_params)
    return render:new unless genre.save
    redirect_to genres_path
  end

  def new
    @genre = Genre.new
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    return render:new unless @genre.update(genre_params)
    redirect_to genre_path(@genre.id)
  end
end
