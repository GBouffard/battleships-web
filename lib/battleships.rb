require 'sinatra/base'
require_relative 'player'
require_relative 'board'
require_relative 'cell'
require_relative 'game'
require_relative 'ship'
require_relative 'water'



class Battleships < Sinatra::Base
  set :public, Proc.new { File.join(root, "..", "public") }
  set :views, Proc.new { File.join(root, "..", "views") }

  get '/' do
    erb :index
  end

  get '/game' do
    puts session.inspect
    @visitor = params[:player]
    @player = Player.new @visitor
    @board = Board.new({size: 25, cell: Cell, number_of_pieces: 3})
    session[:player] = @visitor
    @ship = Ship.new({size: 3})
    erb :game
  end

  get '/hit' do
    @coordinate_to_hit = params[:coordinate_to_hit]
    @board = Board.new({size: 25, cell: Cell, number_of_pieces: 3})
    @board.hit_coordinate(@coordinate_to_hit) # Method hit takes a Cell...
    erb :hit
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
