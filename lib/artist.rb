class Artist
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end
  def self.all
    @@all
  end
  def add_song(song)
    @songs << song
  end
  def save
    @@all << self
  end
  def self.find_or_create_by_name(name)
        artist = @@all.find {|artist| name == artist.name}
    if artist.nil?
      new_artist = Artist.new(name)
      new_artist.save
      new_artist
    else
      artist
    end
  end
  def print_songs
    list =  @songs.collect{|x| puts x.name}
  end

  end
