class GenresController < ApplicationController

  def new
    @genre = Genre.new
  end

  def create
    genre = Genre.create(genre_params)
    redirect_to genre_path(genre)
  end

  def show
    find_genre
  end

  def edit
    find_genre
  end

  def update
    find_genre.update(genre_params)
    redirect_to genre_path(find_genre)
  end


private

  def genre_params
    params.require(:genre).permit(:name)
  end

  def find_genre
    @genre = Genre.find(params[:id])
  end

end