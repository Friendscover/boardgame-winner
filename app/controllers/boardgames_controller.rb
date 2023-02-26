class BoardgamesController < ApplicationController
  def index
    @boardgames = Boardgame.all
  end

  def new
    @boardgame = Boardgame.new
  end

  def show
    @boardgame = Boardgame.find(params[:id])

    @games = Game.where("boardgame_id = ?", params[:id])
  end

  def create
    @boardgame = Boardgame.new(boardgame_params)

    if @boardgame.save
      redirect_to new_game_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private 
    def boardgame_params
      params.require(:boardgame).permit(:title, :ranked)
    end
end
