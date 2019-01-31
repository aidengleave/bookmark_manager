require 'bookmark'

describe '.list_all' do
  it 'returns a list of bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks (title, url) VALUES('Makers', 'http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks (title, url) VALUES('Destroy All Software', 'http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks (title, url) VALUES('Google', 'http://www.google.com');")

    bookmarks = Bookmark.list_all

    expect(bookmarks).to include 'Makers'
    expect(bookmarks).to include 'Destroy All Software'
    expect(bookmarks).to include 'Google'
  end
end

describe '.create' do
  it 'creates a new bookmark' do
    Bookmark.create('Github', 'http://github.com')
    
    expect(Bookmark.list_all).to include 'Github'
  end
end