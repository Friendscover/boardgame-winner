class AddBoardgameRefToGame < ActiveRecord::Migration[7.0]
  def change
    add_reference :games, :boardgame
  end
end
