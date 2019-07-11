class GamesController < ApplicationController

  def create
    game = Game.create(state: params[:state])
  end

  def show
    game = Game.find(params[:id])
    render json: {
      jsonapi: { version: "1.0" },
      data: {
        attributes: { state: game.state, },
        id: game.id.to_s,
        type: "games",
      },
    }
  end

  def update
    game = Game.find(params[:id])
    puts params
    puts game_params
    # byebug
    game.update(game_params)
    render json: {
      jsonapi: { version: "1.0" },
      data: {
        attributes: { state: game.state, },
        id: game.id.to_s,
        type: "games",
      },
    }
  end

  def index
    games = Game.all.map do |game|
      {
        attributes: { state: game.state, },
        id: game.id.to_s,
        type: "games",
      }
    end


    render json: {
      data: games,
      jsonapi: { version: "1.0" },
    }
  end

  private

  def game_params
    params.permit(:id, state: [])
  end

end
