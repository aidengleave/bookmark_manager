# frozen_string_literal: true

require 'pg'

class Bookmark

  def initialize(id, title, url)
    @id = id
    @title = title
    @url = url
  end

  def self.list_all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end

    result = connection.exec('SELECT * FROM bookmarks;')
    result.map { |bookmark| bookmark['title']}
  end

  def self.create(title, url)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end

    connection.exec("INSERT INTO bookmarks (title, url) VALUES('#{title}', '#{url}')")

  end
end

