class GamesController < ApplicationController
  # Add your GamesController code here
  
  def index
    @games = Game.all
    render json: @games, status: 200
  end
  
  def show
    @game = Game.find(params[:id])
    render json: @game, status: 200
  end

  def create
    @game = Game.create(state: params[:state])
    redirect_to @game
  end

  def update
    @game = Game.find(params[:id])
    @game.state = params[:state]
    @game.save
    redirect_to @game
  end

end
