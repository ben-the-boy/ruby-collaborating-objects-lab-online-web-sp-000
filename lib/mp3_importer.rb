require 'pry'
class MP3Importer 
  attr_accessor :path 
  
  def initialize(path)
    @path = path 
  end
  
  def files
    @files = Dir.entries(@path).select{|file| file.end_with?("3")}
    @files
  end 
  
  def import
    self.files.each {|file| Song.new_by_filename(filename)}
  end 
  
  
  
end