class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize
    self.class.all << self
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = Song.new
    self
  end

end
