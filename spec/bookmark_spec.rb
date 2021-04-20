require 'bookmark'

describe Bookmark do
  context '#initialize' do
    it 'can store bookmarks' do
      expect(Bookmark.all).to include("http://www.makersacademy.com", "http://www.google.com", "http://www.destroyallsoftware.com")
    end
  end
end