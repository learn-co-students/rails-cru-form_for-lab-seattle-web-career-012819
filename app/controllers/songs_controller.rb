class SongsController < ApplicationController
  def index
    @songs = Song.all
  end
  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(closed_params(:name, :genre_id, :artist_id))
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(closed_params(:name, :genre_id, :artist_id))
    redirect_to song_path(@song)
  end

  def closed_params(*args)
    params.require(:song).permit(*args)
  end
end
