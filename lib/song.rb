class Song

@@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  attr_reader :artist
  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    filename_split = filename.split(" - ")
    name = filename_split[1]
    artist = filename_split[0]
    song = Song.new(name)
    song.artist = Artist.find_or_create_by_name(artist)
    song
  end

  def artist_name=(artist)
    artist_name = Artist.find_or_create_by_name(artist)
  end


end
