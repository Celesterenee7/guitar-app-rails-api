class SongsController < ApplicationController
    def index
      songs = Song.all
      render json: songs, status: :ok
    end
  
    def create
      song = Song.create!(song_params)
      json_response(@song, :created)
    end

    def self.search(search)
      if search
        song = Song.find_by(name: search)
        if songself.where(song_id: song)
        else
          Song.all
        end
      else Song.all
      end
    end

    private
    def song_params
      params.require(:song).permit(:name, :lyrics, :chords, :tabs, :search)
    end
  end
