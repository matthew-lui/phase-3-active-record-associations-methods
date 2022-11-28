class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    self.songs.count
  end

  def artist_count
    # return the number of artists associated with the genre
    self.artists.count
    # second variable is the array and then count. 
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    # self.artists.map do |artist|
    #   artist.name 
    self.artists.pluck(:name)
    # the pluck method will just go into the array and pluck/pull out the name from our array. 
  end
end
