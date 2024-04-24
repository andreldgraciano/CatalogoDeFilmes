class MoviesController < ApplicationController
  def index
    @current_date = Date.today
    @movies = Movie.all
  end

  def show
    @current_date = Date.today
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
    session[:flow] = 'new'
  end

  def create
    @movie = Movie.new(params.require(:movie).permit(:title, :release_year, :synopsis, :country, :film_runtime, :genre_id, :director_id, :poster))

    if(@movie.save)
      return redirect_to movie_path(@movie.id)
    end

    flash[:notice] = "Já possui um filme com este título, insira um diferente!"
    redirect_to(new_movie_path)
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])

    if @movie.update(params.require(:movie).permit(:title, :release_year, :synopsis, :country, :film_runtime, :genre_id, :director_id, :poster))
      return redirect_to(movie_path(@movie.id))
    end

    flash[:notice] = "Já possui um filme com este título, insira um diferente!"
    redirect_to(edit_movie_path(@movie.id))
  end
end
