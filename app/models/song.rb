class Song < ActiveRecord::Base
  belongs_to :artist
  
  def artist_name
    @artist_name
  end

  def artist_name=(name)
    @artist_name = name
  end

end
