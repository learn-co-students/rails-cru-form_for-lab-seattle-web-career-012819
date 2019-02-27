class ArtistsController < ApplicationController
  def show
    @artist = Artist.find(params[:id])
    @songs = @artist.songs
    @genres = @songs.collect {|song| song.genre}.uniq
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new
    bio = params[:bio]
    artist_name = params[:name]
    @artist = Artist.create(name: artist_name,
      bio: bio)
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    bio = params[:artist][:bio]
    artist_name = params[:artist][:name]
    @artist.update(name: artist_name,
      bio: bio)
    redirect_to artist_path(@artist)
  end
end
