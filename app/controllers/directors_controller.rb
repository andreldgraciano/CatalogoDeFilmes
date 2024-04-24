class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end

  def show
    @director = Director.find(params[:id])
    @movies = Movie.where(director_id: params[:id])
  end

  def new
    @director = Director.new
    session[:flow] = 'new'
  end

  def create
    @director = Director.new(params.require(:director).permit(:name, :nationality, :birth_date, :genre_id))

    if(@director.save)
      return redirect_to(director_path(@director.id))
    end

    redirect_to(new_director_path)
  end

  def edit
    @director = Director.find(params[:id])
  end

  def update
    @director = Director.find(params[:id])

    if @director.update(params.require(:director).permit(:name, :nationality, :birth_date, :genre_id))
      return redirect_to(director_path(@director.id))
    end

    redirect_to(edit_director_path(@director.id))
  end
end
