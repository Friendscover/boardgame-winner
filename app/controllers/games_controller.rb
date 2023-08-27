class GamesController < ApplicationController
  def index
    @games = Game.order(created_at: :desc).limit(5)

    @games_toby = Game.where("winner = ?", "Tobias")
    @games_teresa = Game.where("winner = ?", "Teresa")
    @games_draw = Game.where("winner = ?", "Draw")
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)

    if @game.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private 
    def game_params
      params.require(:game).permit(:boardgame_id, :winner)
    end
end
