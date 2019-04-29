class SongGenre < ActiveRecord::Base
  belongs_to :genre
  belongs_to :song

  def slug
    self.name.split.collect{|n| n.downcase}.join("-")
  end

end
