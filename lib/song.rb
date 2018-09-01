class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize(name = nil, artist_name = nil)
    @name = name
    @artist_name = artist_name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create(name = nil, artist_name = nil)
    song = Song.new
    self
  end

end
