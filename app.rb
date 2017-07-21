require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  get '/testing' do
    'Testing infrastructure working!'
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    @game.attack
    erb(:attack)
  end

  post '/switch_turns' do
    @game.switch_turns
    redirect '/play'
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    Game.create(player_1,player_2)
    redirect '/play'
  end

  run! if app_file == $0
end
