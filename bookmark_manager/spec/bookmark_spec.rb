require 'bookmark'

describe '.list_all' do
  it 'returns a list of bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks (title, url) VALUES('Makers', 'http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks (title, url) VALUES('Destroy All Software', 'http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks (title, url) VALUES('Google', 'http://www.google.com');")

    bookmarks = Bookmark.list_all

    expect(bookmarks[0].title).to include 'Makers'
    expect(bookmarks[1].title).to include 'Destroy All Software'
    expect(bookmarks[2].title).to include 'Google'
  end
end

describe '.create' do
  it 'creates a new bookmark' do
    Bookmark.create('Github', 'http://github.com')

    bookmarks = Bookmark.list_all
    
    expect(bookmarks[0].title).to include 'Github'
    expect(bookmarks[0].url).to include 'http://github.com'
  end
end