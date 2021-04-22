require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:home)
  end

  get '/list' do
    @bookmarks = Bookmark.all
    erb(:index)
  end 

  get '/add' do
    erb(:add)
  end 

  post '/list' do
    Bookmark.create(url: params[:url], title: params[:title])
    redirect '/list'
  end 

  run! if app_file == $0
end