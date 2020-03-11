class SongsController < ApplicationController
    def index
      songs = Song.all
      render json: songs, status: :ok
    end
  
    def create
      song = Song.create!(song_params)
      render json: song, status: :ok
    end
  
    def song_params
      params.require(:song).permit(:name, :lyrics, :chords, :tabs)
    end
  end
