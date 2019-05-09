class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = Dir[path+"/**.*"]
  end
  def files
   @files
   @files = @files.map{|x| x.gsub(path, "")}
   @files = @files.map{|x| x.gsub("/", "")}

  end
  def import

    @files.each {|filename| Song.new_by_filename(filename)}

 end


end
