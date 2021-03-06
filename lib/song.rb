class Song

  attr_accessor :name, :artist, :genre

####  class variables  ####
    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}
    @@artist_count = {}

####  initialize  ####
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << @artist
    @@genres << @genre

#### some weird if statements...is it better to put in the initialize or in the method itself?
      if @@genre_count.keys.include?(@genre)
        @@genre_count[@genre] += 1
      else @@genre_count[@genre] = 1
    end

      if @@artist_count.keys.include?(@artist)
        @@artist_count[@artist] += 1
      else @@artist_count[@artist] = 1
    end
  end

####  class methods  ####
  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genre_count
  end

  def self.artist_count
    @@artist_count
  end

  #### can instance methods be used in class methods? and vice versa? instance methods use class varibles?

end
