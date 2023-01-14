class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :title
      t.integer :games_played
      t.string :winner

      t.timestamps
    end
  end
end
