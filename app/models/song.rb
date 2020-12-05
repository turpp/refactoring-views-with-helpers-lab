class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    if self.artist
    self.artist.name
    else
      
    end

  end

  def artist_name=(name)
    if Artist.find_by(name: name)
      self.artist=Artist.find_by(name: name)
    else
      self.artist=Artist.create(name: name)
  end
end
end
