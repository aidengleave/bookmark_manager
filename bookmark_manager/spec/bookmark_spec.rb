require 'bookmark'
 
describe Bookmark do
  it 'returns a list of all bookmarks' do
    expect(subject.list_all).to eq(["foo.com", "bar.net", "moo.org"])
  end

end