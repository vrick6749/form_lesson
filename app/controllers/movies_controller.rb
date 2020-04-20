class MoviesController < ApplicationController
    def index
        @movies = session[:movies]
    end

    def create
        if session[:movies] == nil
            session[:movies]=[]
        end
        session[:movies].push(params[:movie])

        redirect_to movies_path(session[:movies].length -1)
    end

    def new
    end

    def show
        @movie = session[:movies][params[:id].to_i -1]
    end
end