class ArtistsController < ApplicationController
   before_action :set_artist, only: [:update, :show, :edit]

   def index 
      @artists = Artist.all
   end 

   def new 
      @artist = Artist.new
   end 

   def create
      @artist = Artist.create(post_params)
      redirect_to artist_path(@artist)
   end 
   
   def edit 
   end 
   
   def update 
      @artist.update(post_params)
      redirect_to artist_path(@artist)
   end 

   def show 
   end 
   
   private 
   
   def set_artist 
      @artist = Artist.find(params[:id])
   end 

   def post_params
      params.require(:artist).permit(:name, :bio)
   end 
end
