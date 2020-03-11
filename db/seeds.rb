class Seed

    def self.begin
      seed = Seed.new
      seed.generate_songs
    end
  
    def generate_songs
      10.times do |i|
        song = Song.create!(
          name: Faker::Artist.name,
          lyrics: Faker::TvShows::GameOfThrones.quote,
          chords: Faker::Music.chord,
          tabs: Faker::Music.key,
        )
        puts "Song #{i}: Name: #{song.name}. Lyrics: #{song.lyrics}. Chords: #{song.chords}. Tabs: #{song.tabs}."
      end
    end
  end
  
  Seed.begin
