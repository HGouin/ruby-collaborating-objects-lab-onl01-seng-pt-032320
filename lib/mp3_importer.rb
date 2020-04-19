class MP3Importer

  attr_reader :path, :files

  def initialize(file_path)
    @path = file_path
    @files = Dir.entries(file_path).collect{ |file| file.split("/").last }
    puts @files
  end

  def import
  end
end
