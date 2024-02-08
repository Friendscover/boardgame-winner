class GamesController < ApplicationController
  def index
    @games = Game.order(created_at: :desc).limit(5)

    @games_toby = Game.where("winner = ?", "Tobias").order(created_at: :desc).limit(11)
    @games_teresa = Game.where("winner = ?", "Teresa").order(created_at: :desc).limit(11)
    @games_draw = Game.where("winner = ?", "Draw").order(created_at: :desc).limit(11)
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
