class GamesController < ApplicationController
  # Add your GamesController code here
  def new 
    @game = Game.new 
  end 
  def create 
    @game = Game.create(state: params["state"])
    render json: @game 
  end 
  def show 
    @game = Game.find(params[:id])
    render json: @game 
  end 

  def update 
    @game = Game.find(params[:id])
    @game = Game.update(state: params["state"])
    render json: @game 
  end 
  
  def index 
    @games = Game.all 
    render json: @games
  end 

end
