feature 'Adding a new bookmark' do
  scenario 'User adds new bookmark to manager' do
    visit '/'
    click_button('Add')
    fill_in('url', with: 'http://test.com')
    fill_in('title', with: 'Test Bookmark')
    click_button('Submit')

    expect(page).to have_link('Test Bookmark', href: 'http://test.com')
  end 
end 