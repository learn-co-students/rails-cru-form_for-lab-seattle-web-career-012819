class SongsController < ApplicationController
   before_action :set_song, only: [:edit, :update, :show]

   def index 
      @songs = Song.all
   end 

   def new 
      @song = Song.new 
   end 

   def create
      @song = Song.create(post_params)
      redirect_to song_path(@song)
   end 
   
   def edit
   end 
   
   def update 
      @song.update(post_params)
      redirect_to song_path(@song)
   end 

   def show 
   end 

   private 

   def set_song 
      @song = Song.find(params[:id])
   end 

   def post_params
      params.require(:song).permit(:name, :artist_id, :genre_id)
   end 
end
