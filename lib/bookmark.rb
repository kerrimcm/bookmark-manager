class Bookmark
  attr_reader :bookmarks
  
  def initialize
    @bookmarks = [
      "www.google.com",
      "www.youtube.com",
      "www.netflix.com"
    ]
  end

  def self.all 
    [
      "www.google.com",
      "www.youtube.com",
      "www.netflix.com"
    ]
  end

  # def self.create 
  #   @bookmark = Bookmark.new
  # end

  # def self.instance
  #   @bookmark
  # end

end
