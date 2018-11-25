class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@genres << genre
    @@artists << artist

  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genre_count

    counting = Hash.new(0)
    @@genres.each do |genre|
        counting[genre] += 1
    end
    counting.each do |genre, count|
    end

  end




  def self.artist_count
    counting = Hash.new(0)
    @@artists.each do |artist|
        counting[artist] += 1
    end
    counting.each do |artist, count|
    end
  end

end
