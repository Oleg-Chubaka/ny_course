class AddTeseraUrlToOlegGames < ActiveRecord::Migration[5.1]
  def change
    add_column :oleg_games, :tesera_url, :string
  end
end
