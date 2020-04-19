class MP3Importer

  def initialize(file_path)
    @file_path = file_path
  end

  def files
Dir.entries(@file_path)
  end

  def import
  end
end
