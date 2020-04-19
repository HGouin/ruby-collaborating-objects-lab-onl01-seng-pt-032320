class MP3Importer

  attr_reader :path

  def initialize(file_path)
    @path = file_path

  end

  def files
    Dir.entries(@path).each do
    end
  end

  def import
  end
end
