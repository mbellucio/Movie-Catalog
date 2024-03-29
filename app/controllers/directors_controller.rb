class DirectorsController < ApplicationController
  def index
    @directors = Director.all()
  end

  def show
    @director = Director.find(params[:id])
    @movies = @director.movies
  end

  def director_params
    params.require(:director).permit(
      :name,
      :nationality,
      :birth_date,
      :genre_id
    )
  end

  def create
    director = Director.new(director_params)
    return render:new unless director.save
    redirect_to directors_path
  end

  def new
    @director = Director.new
  end

  def edit
    @director = Director.find(params[:id])
  end

  def update
    @director = Director.find(params[:id])
    return render:new unless @director.update(director_params)
    redirect_to director_path(@director.id)
  end

end
