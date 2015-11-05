#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

def init_db
	@db = SQLite3::Database.new 'leprosorium.db'
	@db.results_as_hash = true
end

before do
	
end

# configure do
# 	db = get_db 										#
# 	db.execute 'CREATE TABLE IF NOT EXISTS 						
# 			"Content" 
# 			(
# 				"id" INTEGER PRIMARY KEY AUTOINCREMENT, 
# 				"username" TEXT, 
# 				"phone" TEXT, 
# 				"datestamp" TEXT, 
# 				"barber" TEXT, 
# 				"color" TEXT
# 			)'	
# end


get '/' do
	erb "Hello!</a>"			
end

get '/new' do
	erb :new	
end

post '/new' do
	content = params[:content]
	erb "#{content}"
end