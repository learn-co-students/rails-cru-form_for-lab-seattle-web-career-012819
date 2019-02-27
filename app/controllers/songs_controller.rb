class SongsController < ApplicationController
  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    artist = Artist.find_by(name: params[:artist])
    genre = Genre.find_by(name: params[:genre])
    song_name = params[:name]
    @song = Song.create(name: song_name,
      artist_id: artist.id, genre_id: genre.id)
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    artist = Artist.find_by(name: params[:artist])
    genre = Genre.find_by(name: params[:genre])
    song_name = params[:name]
    @song.update(name: song_name,
      artist_id: artist.id, genre_id: genre.id)
  end
end
