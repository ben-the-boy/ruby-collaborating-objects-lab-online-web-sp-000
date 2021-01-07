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
    binding.pry
  end 
  
  def artist_name=(name)
     
  end 
  
  
end