class MoviesController < ApplicationController

    before_action :movie_find, only:[:show, :edit, :update, :destroy]

def index
    @movies = Movie.all

end

def new
    @movie = Movie.new
end

def create
    @movie = Movie.new(movie_params)
    @movie.favorite = false
    @movie.save
    redirect_to movies_path
end

def show
    # @movie = Movie.find(params[:id])

end

def edit
    # @movie = Movie.find(params[:id])
end   


def update
    # @movie=Movie.find(params[:id])
    @movie.update(movie_params)    
    redirect_to movies_path 
end

def destroy
    # @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to movies_path
end

def list
    @movies = Movie.all 

end








private
def movie_params
    params.require(:movie).permit(:name, :year, :favorite)
end

def movie_find
    @movie = Movie.find(params[:id])  
end





end
