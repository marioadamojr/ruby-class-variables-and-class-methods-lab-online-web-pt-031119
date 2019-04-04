require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = {}


  def initialize(song_name, song_artist, song_genre)
    @@count += 1
    @name = song_name
    @artist = song_artist
    @@artists << song_artist
    @genre = song_genre
    @@genres[:genre] = song_genre
  end

  def self.song_count
    @@count
  end

  def self.artist_count
    @@artists
  end

  def self.genre_count
    genre_count={}
    @@genres.each do |genre, value|
      if genre_count.has_key?(genre)
        genre_count[genre]+=1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end
end
binding.pry
