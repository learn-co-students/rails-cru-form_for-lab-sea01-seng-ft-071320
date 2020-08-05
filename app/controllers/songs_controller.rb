class SongsController < ApplicationController
  before_action :draw_song, only: [ :show, :edit, :update ]

  def index
    @songs = Song.all
  end

  def show
  end

  def new
  end

  def create
    @song = Song.new(song_params(:name, :genre_id, :artist_id))
    @song.save
    redirect_to song_path(@song)
  end

  def edit
  end
  
  def update
    @song.update(song_params(:name, :genre_id, :artist_id))
    redirect_to song_path(@song)
  end

  private

  def draw_song
    @song = Song.find(params[:id])
  end

  def song_params(*args)
    params.require(:song).permit(*args)
  end
end
