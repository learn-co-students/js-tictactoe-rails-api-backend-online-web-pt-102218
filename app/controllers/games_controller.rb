class GamesController < ApplicationController

  def create
    game = Game.create(state: params[:state])
  end

  def show

  end

  def update

  end

  def index

  end

end
