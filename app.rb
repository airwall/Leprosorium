#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

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