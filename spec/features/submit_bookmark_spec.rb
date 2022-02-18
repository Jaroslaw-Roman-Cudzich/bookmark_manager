require 'pg'

# As a time-pressed user, 
# so I can add a new bookmark quickly,
# I would like to add it directly from the browser

feature 'submitting bookmark' do
  scenario 'submit bookmark through the browser' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://www.example.org')
    fill_in('title', with: 'Test Bookmark')
    click_button('Submit')

    expect(page).to have_link('Test Bookmark', href: 'http://www.example.org')
  end
end