class GenresController < ApplicationController
  def show
    @genre = Genre.find(params[:id])
    @songs = @genre.songs
    @artists = @songs.collect {|song| song.artist}.uniq
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new
    genre_name = params[:name]
    @genre = Genre.create(name: genre_name)
    redirect_to genre_path(@genre)
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    genre_name = params[:genre][:name]
    @genre.update(name: genre_name)
    redirect_to genre_path(@genre)
  end
end
