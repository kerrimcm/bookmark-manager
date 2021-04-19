feature 'Listing boomkarks' do
  scenario 'we can see our bookmarks index' do
    visit '/'
    click_button('Bookmarks')

    expect(page).to have_content('Your saved bookmarks')
  end

  scenario 'we can see our list' do
    visit '/list'

    expect(page).to have_content('www.google.com')
    expect(page).to have_content('www.youtube.com')
    expect(page).to have_content('www.netflix.com')
  end
end