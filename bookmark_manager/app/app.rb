# frozen_string_literal: true

require 'sinatra/base'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Bookmark'
  end

  get '/bookmarks' do
    erb :index
  end

  run! if app_file == $PROGRAM_NAME
end
