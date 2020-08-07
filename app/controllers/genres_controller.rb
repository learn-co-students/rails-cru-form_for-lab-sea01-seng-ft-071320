class GenresController < ApplicationController

    # def index
    # end

    def create
        @genre = Genre.new(genre_params)
        if @genre.save
            redirect_to @genre
        else
            render :new
        end
    end

    def new
        @genre = Genre.new
    end

    def edit
        @genre = Genre.find(params[:id])
    end

    def show
        @genre = Genre.find(params[:id])
    end

    def update
        @genre = Genre.find(params[:id])
        if @genre.update(genre_params)
            redirect_to @genre
        else 
            render :edit
        end
    end

    # def destroy
    # end

    private

    def genre_params
        params.require(:genre).permit(:name)
    end

end
