class Song < ActiveRecord::Base
  belongs_to :artist
  
  def artist_name
    # puts self
    # puts artist
    self.artist.name
    # binding.pry
  end

  def artist_name=(name)
    new_artist = Artist.all.find_or_create_by(name: name)
    self.artist = new_artist
  end

end
