require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  enable :sessions, :method_override

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

  delete '/list/:id' do
    Bookmark.delete(id: params[:id])
    redirect '/list'  
  end

  get '/list/:id/update' do
    @bookmark_id = params[:id]
    erb :'list/update'
  end

  patch '/list/:id' do 
    con = PG.connect :dbname => 'bookmark_manager_test'
    con.exec("UPDATE bookmarks SET url = '#{params[:url]}', title = '#{params[:title]}' WHERE id = '#{params[:id]}'")
    redirect '/list' 
  end

  run! if app_file == $PROGRAM_NAME
end