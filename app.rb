require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'


class Battle < Sinatra::Base

  enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @player1_name = $player1.name
    @player2_name = $player2.name
    # Game.new($player1, $player2).attack($player2)
    @game = $game
    @player1_hitpoints = $player1.hitpoints
    @player2_hitpoints = $player2.hitpoints
    erb :play
  end




  post "/attack" do
    @game = $game
    # Game.new($player1, $player2).attack($player2)
    @player1_name = $player1.name
    @player2_name = $player2.name
    @player1_hitpoints = $player1.hitpoints
    @player2_hitpoints = $player2.hitpoints
    @game.attack(@game.player2)
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
