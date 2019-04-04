require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []


  def initialize(song_name, song_artist, song_genre)
    @@count += 1
    @name = song_name
    @artist = song_artist
    @genre = song_genre
    @@artists << song_artist
    @@genres << song_genre
  end
  
  

  # def self.song_count
  #   @@count
  # end
  # 
  # def self.artist_count
  #   @@artists
  # end
  # 
  # def self.genre_count
  #   genre_count={}
  end
end
# binding.pry
