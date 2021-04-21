require 'pg'

feature 'Listing boomkarks' do
  scenario 'we can see our bookmarks index' do
    visit '/list'
    expect(page).to have_content('Your saved bookmarks')
  end

  scenario 'we can see our list' do
    con = PG.connect :dbname => 'bookmark_manager_test'

    Bookmark.create(url: 'http://www.makersacademy.com')
    Bookmark.create(url: 'http://www.destroyallsoftware.com')
    Bookmark.create(url: 'http://www.google.com')

    visit '/list'

    #save_and_open_page

    expect(page).to have_content('http://www.makersacademy.com')
    expect(page).to have_content('http://www.google.com')
    expect(page).to have_content('http://www.destroyallsoftware.com')
  end
end