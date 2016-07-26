require 'data_mapper'
require 'dm-postgres-adapter'

class Link
  include DataMapper::Resource

  property :id, Serial
  property :title, String
  property :url, String



  def add_bookmark(title,url)
    Link.create(title: title, url: url)
  end

end

DataMapper.setup(:default, "postgres://localhost/bookmark_manager_test")
DataMapper.finalize
DataMapper.auto_upgrade!


#Link.create(title: “Lori")
