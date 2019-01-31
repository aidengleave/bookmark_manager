require 'bookmark'

# describe '.list_all' do
#   it 'returns a list of bookmarks' do
#     connection = PG.connect(dbname: 'bookmark_manager_test')

#     connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com');")
#     connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
#     connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

#     bookmarks = Bookmark.list_all

#     expect(bookmarks).to include 'http://www.makersacademy.com'
#     expect(bookmarks).to include 'http://www.destroyallsoftware.com'
#     expect(bookmarks).to include 'http://www.google.com'
#   end
# end

# describe '.create' do
#   it 'creates a new bookmark' do
#     Bookmark.create(url: 'http://github.com')
    
#     expect(Bookmark.list_all).to include 'http://github.com'
#   end
# end