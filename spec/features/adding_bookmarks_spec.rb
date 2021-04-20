feature 'Adding a new bookmark' do
  scenario 'User adds new bookmark to manager' do
    visit '/'
    click_button('Add')
    fill_in('url', with: 'http://test.com')
    click_button('Submit')

    expect(page).to have_content 'http://test.com'
  end 
end 