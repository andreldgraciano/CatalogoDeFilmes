class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
    @movies = Movie.where(genre_id: params[:id])
  end

  def new
    @genre = Genre.new
    session[:flow] = 'new'
  end

  def create
    @genre = Genre.new(params.require(:genre).permit(:name))

    if(@genre.save)
      return redirect_to(genre_path(@genre.id))
    end

    flash[:notice] = 'Gênero já cadastrado'
    redirect_to(new_genre_path)
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])

    if @genre.update(params.require(:genre).permit(:name))
      return redirect_to(genre_path(@genre.id))
    end

    flash[:notice] = 'Gênero já cadastrado'
    redirect_to(edit_genre_path(@genre.id))
  end
end
