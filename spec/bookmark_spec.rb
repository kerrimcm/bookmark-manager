require 'bookmark'
require 'database_helpers'

describe Bookmark do
  context '#all' do
    it 'can store and return a list of bookmarks' do
      bookmark = Bookmark.create(url: 'http://www.makersacademy.com', title: "Makers Academy")
      Bookmark.create(url: 'http://www.destroyallsoftware.com', title: "Destroy All Software")
      Bookmark.create(url: 'http://www.google.com', title: "Google")

      bookmarks = Bookmark.all

      expect(bookmarks.length).to eq 3
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.title).to eq 'Makers Academy'
      expect(bookmarks.first.url).to eq 'http://www.makersacademy.com'
    end
  end

  context '#create' do
    it 'creates a new bookmark' do
      bookmark = Bookmark.create(url: 'http://test.com', title: 'Test Bookmark')
      persisted_data = persisted_data(id: bookmark.id)

      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data['id']
      expect(bookmark.title).to eq 'Test Bookmark'
      expect(bookmark.url).to eq 'http://test.com'
    end 
  end 

  context '#delete' do
    it 'deletes selected bookmark' do
      bookmark = Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')

      Bookmark.delete(id: bookmark.id)

      expect(Bookmark.all.length).to eq 0
    end 
  end 

  context '#update' do
    it 'updates selected bookmark' do
      bookmark = Bookmark.create(url: 'http://wwww.makersacademy.com', title: 'Makers Academy')

      updated_bookmark = Bookmark.update(id: bookmark.id, url: 'http://www.codewars.com', title: 'Code Wars')

      expect(updated_bookmark).to be_a Bookmark
      expect(updated_bookmark.title).to eq 'Code Wars'
      expect(updated_bookmark.url).to eq 'http://www.codewars.com'
      expect(updated_bookmark.id).to eq bookmark.id
    end
  end
  context '#find' do
    it 'returns the requested bookmark object' do
      bookmark = Bookmark.create(url: 'http://wwww.makersacademy.com', title: 'Makers Academy')

      return_my_bookmark = Bookmark.find(id: bookmark.id)

      expect(return_my_bookmark).to be_a Bookmark
      expect(return_my_bookmark.id).to eq bookmark.id
      expect(return_my_bookmark.title).to eq 'Makers Academy'
      expect(return_my_bookmark.url).to eq 'http://wwww.makersacademy.com'
    end
  end
end