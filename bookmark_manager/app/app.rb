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

  get '/bookmarks/new' do
    erb :new_bookmark
  end

  post '/bookmarks' do
    Bookmark.create(title: params[:title], url: params[:url])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
