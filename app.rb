require 'sinatra/base'
require_relative './lib/person'

class Birthday < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/birthday' do
    @person = Person.new(params[:name], params[:month], params[:day])
    erb :birthday
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
