class GenresController < ApplicationController
   before_action :set_genre, only: [:edit, :update, :show]
   
   def index 
      @genres = Genre.all 
   end 

   def new 
      @genre = Genre.new
   end 

   def create
      @genre = Genre.create(post_params)
      redirect_to genre_path(@genre)
   end 
   
   def edit 
   end 
   
   def update 
      @genre.update(post_params)
      redirect_to genre_path(@genre)
   end 
   
   def show
   end 

   private 

   def set_genre 
      @genre = Genre.find(params[:id])
   end 

   def post_params
      params.require(:genre).permit(:name)
   end 
end
