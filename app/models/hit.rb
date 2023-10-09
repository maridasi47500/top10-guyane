class Hit < ApplicationRecord
  belongs_to :song
  accepts_nested_attributes_for :song, allow_destroy: true
  attr_accessor :mytitle,:myartist
  def azert
    p self.song.mytitle
    p self.song.myartist
    self.song=Song.find_or_initialize_by(title: self.song.mytitle, artist: self.song.myartist)
  end
  def title
    song.title
  end
  def artist
    song.artist
  end
end
