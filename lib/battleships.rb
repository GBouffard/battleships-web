require 'sinatra/base'
require_relative 'player'
require_relative 'board'
require_relative 'cell'
require_relative 'game'
require_relative 'ship'
require_relative 'water'



class Battleships < Sinatra::Base
  set :views, Proc.new { File.join(root, "..", "views") }

  get '/' do
    erb :index
  end

  get '/game' do
    @visitor = params[:player]
    @player = Player.new @visitor
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
