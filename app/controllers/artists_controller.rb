class ArtistsController < ApplicationController
  before_action :draw_artist, only: [ :show, :edit, :update ]

  def index
    @artists = Artist.all
  end

  def show
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params(:name, :bio))
    @artist.save
    redirect_to artist_path(@artist)
  end

  def edit
  end

  def update
    @artist.update(artist_params(:name, :bio)) # Think about better ways to do this than just calling #update
    redirect_to artist_path(params[:id])
  end

  private

  def draw_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end
end
