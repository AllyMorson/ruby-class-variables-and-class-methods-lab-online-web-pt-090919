class Song
  attr_accessor :name, :artist, :genre

  @@count = 0 # use this variable to keep track of the number of new songs that are created from the Song class. Set this variable equal to 0.
  @@artists = []
  @@genres = []
  
   def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1 #initialize method should use the @@count class variable and increment the value of that variable by 1.
    @@genres << genre #genre of the song being created added to class variable @@genre
    @@artists << artist #artist of the song being created added to class variable @@artist 
  end
  
  def self.count  #must have class method, .count, that returns the total number of songs created.
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1 
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count #step 1 self.what we are trying to accomplish which is a genre count
    genre_count = {} #step 2 and empty hash that will be populated 
    @@genres.each do |genre| #step 3 iterate over the class variable array
      if genre_count[genre] #basically if that genre count is in the genre array alreay ...
        genre_count[genre] += 1  #add it to the count + 1 to account for genre
      else
        genre_count[genre] = 1 #if that genre isnt there just put 1 as it is the first time in the genre array
      end
    end
    genre_count
  end
end