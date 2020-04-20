class MoviesController < ApplicationController
    def index
        @movies = session[:movies]
        @movies ||=[]
    end

    def create
        if session[:movies] == nil
            session[:movies]=[]
        end
        session[:movies].push(params[:movie])

        redirect_to movies_path
    end

    def new
    end

    def show
        @movie = session[:movies][params[:id].to_i -1]
    end
    
    def edit

    end

    def update

    end
end