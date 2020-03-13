class SongsController < ApplicationController
    def index
      songs = Song.all
      render json: songs, status: :ok
    end
  
    def create
      song = Song.create!(song_params)
      json_response(@song, :created)
    end

    # def update
    #   song = Song.find(params[:id])
    #   song.update_attributes(song_param)
    #   render json: song
    # end
  
    # def destroy
    #   song = Song.find(params[:id])
    #   song.destroy
    #   head :no_content, status: :ok
    # end

    private
    def song_params
      params.require(:song).permit(:name, :lyrics, :chords, :tabs)
    end
  end
