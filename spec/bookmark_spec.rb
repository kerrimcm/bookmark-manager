require 'bookmark'

describe Bookmark do
  context '#all' do
    it 'can store bookmarks' do
      con = PG.connect :dbname => 'bookmark_manager_test'

      con.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
      con.exec("INSERT INTO bookmarks (url) VALUES ('http://www.destroyallsoftware.com');")
      con.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")

      bookmarks = Bookmark.all

      expect(bookmarks).to include('http://www.makersacademy.com')
      expect(bookmarks).to include('http://www.destroyallsoftware.com')
      expect(bookmarks).to include('http://www.google.com')
    end
  end

  context '#create' do
    it 'creates a new bookmark' do
      Bookmark.create(url: 'http://test.com')

      expect(Bookmark.all).to include 'http://test.com'
    end 
  end 
end