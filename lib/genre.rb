class Genre
  attr_accessor :genre_name

  @@all = []

  def initialize(genre_name)
    @genre_name = genre_name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    
  end

  def artists
    
  end
  

end
