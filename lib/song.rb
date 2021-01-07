require 'pry'
class Song 
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(name = nil)
    @name = name 
    @@all << self 
  end
  
  def self.all
    @@all 
  end
  
  def self.new_by_filename(filename)
    song = self.new(filename.split(" - ")[1])
    song.artist = filename.split(" - ")[0]
  end 
  
  def artist_name=(name)
     
  end 
  
  
end