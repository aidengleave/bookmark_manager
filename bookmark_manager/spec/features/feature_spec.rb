require 'pg'

feature 'You should see BookmarkManager on the homepage' do
  scenario 'BookmarkManager to be diplayed on the homepage' do
    visit('/')
    expect(page).to have_content 'Bookmark'
  end

  scenario 'returns a list of bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    Bookmark.create(url: 'http://www.makersacademy.com')
    Bookmark.create(url: 'http://www.destroyallsoftware.com')
    Bookmark.create(url: 'http://www.google.com')
    visit('/bookmarks')

    expect(page).to have_content 'http://www.makersacademy.com'
    expect(page).to have_content 'http://www.destroyallsoftware.com'
    expect(page).to have_content 'http://www.google.com'
  end

  scenario 'adding a new bookmark to the table' do
    visit '/bookmarks/new'
    fill_in('url', with: 'http://www.foo.com')
    click_button("Submit")
    expect(page).to have_content('http://www.foo.com')
  end

end
