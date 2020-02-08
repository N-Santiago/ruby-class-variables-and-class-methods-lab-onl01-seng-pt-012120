class Song 
  attr_accessor :name, :artist, :genre 
  
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist 
    @genre = genre 
    @@count += 1
    @@artists << artist #add artist to array
    @@genres << genre #add genre to array
  end 
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq! #return unique genres without repeat
  end

  def self.artists
    @@artists.uniq! #return unique artists without repeat
  end
  
  def self.genre_count(genre_count)
    genre_count = {}
    @genre.each {|@genre| self[@genre]=genre_count} 
  end
end 