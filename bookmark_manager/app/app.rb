# frozen_string_literal: true

require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Bookmark'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.list_all
    erb :index
  end

  run! if app_file == $0
end
