class GenresController < ApplicationController
  def show
    @genre = Genre.find(params[:id])
  end

   def new
    @genre = Genre.new
  end

   def create
    @genre = Genre.create(closed_params(:name))
    redirect_to genre_path(@genre)
  end

   def edit
    @genre = Genre.find(params[:id])
  end

   def update
    @genre = Genre.find(params[:id])
    @genre.update(closed_params(:name))
    redirect_to genre_path(@genre)
  end

   def closed_params(*args)
		params.require(:genre).permit(*args)
	end
end
