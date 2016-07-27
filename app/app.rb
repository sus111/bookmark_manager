ENV["RACK_ENV"] ||= "development"
require 'sinatra/base'
require_relative 'data_mapper_setup'
require_relative 'models/link'

class BookmarkManager < Sinatra::Base

get '/' do
  erb :'links/home'
end

get '/links' do
  @links =Link.all
  @tags = Tag.all
  erb :'links/index'
end

get '/links/new' do
  erb :'links/new'
end

post '/links' do
  link = Link.new(url: params[:url], title: params[:title])
  tag = Tag.first_or_create(tag: params[:tag])
  link.tags << tag
  link.save
  redirect to('/links')
end

get '/tags' do
  tag = Tag.first(tag: params[:tag])
  @links = tag ? tag.links : []
  erb :'links/index'
end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
