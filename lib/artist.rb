require 'pry'

class Artist
  attr_accessor :name, :songs
  
  @@song_total = 0
  
  def initialize(name)
    @name = name
    @songs = []
    @@song_total += 1
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
    @@song_total += 1
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    song.artist = self
    @@song_total += 1
  end
  
  def self.song_count
    @@song_total
  end
  
end