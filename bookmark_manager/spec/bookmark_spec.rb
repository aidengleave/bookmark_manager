# frozen_string_literal: true

require 'bookmark'

describe '.list_all' do
  it 'returns a list of bookmarks' do
    bookmarks = Bookmark.list_all

    expect(bookmarks).to include 'http://www.makersacademy.com'
    expect(bookmarks).to include 'http://www.destroyallsoftware.com'
    expect(bookmarks).to include 'http://www.google.com'
  end
end
