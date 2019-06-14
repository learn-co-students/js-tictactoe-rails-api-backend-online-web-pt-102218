class GamesController < ApplicationController
  # Add your GamesController code here

  def index
    @games = Game.all
    render json: @games
  end

  def new
  end

  def show
    @game = Game.find_by(id: params[:id])
    render json: @game
  end

  def create
    @game= Game.create(state: params[:state])
  end

  def update
    @game = Game.find_by(id: params[:id])
    @game.update(state: params[:state])
    @game.save
    render json: @game
  end


  private

  # def game_params
  #   params.require
  # end

end
