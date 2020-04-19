class MP3Importer

  attr_reader :path, :files

  def initialize(file_path)
    @path = file_path
    @files = Dir.entries[@path].select{ |f| File.file? f }.collect{ |file| file.split("/").last }

  end

  def import
  end
end
