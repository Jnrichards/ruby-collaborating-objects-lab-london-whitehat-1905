class Song
  attr_accessor :genre, :name, :artist
  def initialize(name)
    @name = name
    @artist
    @genre
  end
  def artist_name=(name_string)
     song_artist = Artist.find_or_create_by_name(name_string)
      @artist = song_artist
     @artist.add_song(self)
 end
  def self.new_by_filename(filename)
    array = filename.split("-")
    new_instance = array
    artist, name, genre = new_instance

    song = Song.new(name.strip)
    song.artist_name = artist.strip
    song



  end
end
