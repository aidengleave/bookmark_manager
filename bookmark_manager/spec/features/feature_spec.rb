# frozen_string_literal: true

feature 'You should see BookmarkManager on the homepage' do
  scenario 'BookmarkManager to be diplayed on the homepage' do
    visit('/')
    expect(page).to have_content 'Bookmark'
  end
  scenario 'returns a list of bookmarks' do
    visit('/bookmarks')

    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end
end