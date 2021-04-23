feature 'Update a bookmark' do
  scenario 'The user updates a bookmark' do
    bookmark = Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
    visit '/list'
    expect(page).to have_link('Makers Academy', href: 'http://www.makersacademy.com')

    first('.bookmark').click_button 'Update'
    expect(current_path).to eq "/list/#{bookmark.id}/update"
    fill_in('url', with: 'http://codewars.com')
    fill_in('title', with: 'Code Wars')
    click_button('Done')

    expect(current_path).to eq "/list"
    expect(page).not_to have_link('Makers Academy', href: 'http://www.makersacademy.com')
    expect(page).to have_link('Code Wars', href: 'http://codewars.com')
  end 
end