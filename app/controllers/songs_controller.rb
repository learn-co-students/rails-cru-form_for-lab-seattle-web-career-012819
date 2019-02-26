class SongsController < ApplicationController

  def index
    @song= Song.all
  end

  def new
    @song = Song.new
  end

  def show
    @song = Song.find(params[:id])
  end

  def create
    @song = Song.new(user_params)
    @song.save
    redirect_to song_path(@song)
  end

  def update
    @song = Song.new(user_params)
    @song.save
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
  end

  private

 def user_params
   params.require(:song).permit(:name, :artist_id, :genre_id)
 end
end
