feature 'Delete a bookmark' do
  scenario 'The user deletes a bookmark' do
    Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
    visit '/list'
    expect(page).to have_link('Makers Academy', href: 'http://www.makersacademy.com')

    first('.bookmark').click_button 'Delete'
    expect(current_path).to eq '/list'
    expect(page).not_to have_link('Makers Academy', href: 'http://www.makersacademy.com')
  end 
end