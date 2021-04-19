require 'bookmark'

describe Bookmark do
  context '#initialize' do
    it 'can store bookmarks' do
      expect(subject.bookmarks).to include("www.google.com", "www.youtube.com", "www.netflix.com")
    end
  end
end