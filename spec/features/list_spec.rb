require 'pg'

feature 'Listing boomkarks' do
  scenario 'we can see our bookmarks index' do
    visit '/'
    click_button('Bookmarks')
    expect(page).to have_content('Your saved bookmarks')
  end

  scenario 'we can see our list' do
    con = PG.connect :dbname => 'bookmark_manager_test'

    con.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');")
    con.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com');")
    con.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com');")

    visit '/list'

    #save_and_open_page

    expect(page).to have_content('http://www.makersacademy.com')
    expect(page).to have_content('http://www.google.com')
    expect(page).to have_content('http://www.destroyallsoftware.com')
  end
end